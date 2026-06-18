locals {
  tags = {
    Creator = var.student_email
  }
}

module "resource_group" {
  for_each = var.resource_groups

  source   = "./modules/resource_group"
  name     = each.value.name
  location = each.value.location
  tags     = local.tags
}

module "app_service_plan" {
  for_each = var.app_service_plans

  source              = "./modules/app_service_plan"
  name                = each.value.name
  location            = module.resource_group[each.value.resource_group_key].location
  resource_group_name = module.resource_group[each.value.resource_group_key].name
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
  worker_count        = each.value.worker_count
  tags                = local.tags
}

module "app_service" {
  for_each = var.app_services

  source              = "./modules/app_service"
  name                = each.value.name
  location            = module.resource_group[each.value.resource_group_key].location
  resource_group_name = module.resource_group[each.value.resource_group_key].name
  service_plan_id     = module.app_service_plan[each.value.plan_key].id
  allowed_ip_address  = var.allowed_ip_address
  app_allow_ip_rule   = var.app_allow_ip_rule
  app_allow_tag_rule  = var.app_allow_tag_rule
  tags                = local.tags
}

module "traffic_manager" {
  source = "./modules/traffic_manager"

  name                = var.traffic_manager.name
  resource_group_name = module.resource_group[var.traffic_manager.resource_group_key].name
  routing_method      = var.traffic_manager.routing_method
  endpoints = {
    app1 = {
      name      = module.app_service["app1"].name
      target_id = module.app_service["app1"].id
    }
    app2 = {
      name      = module.app_service["app2"].name
      target_id = module.app_service["app2"].id
    }
  }
  tags = local.tags
}
