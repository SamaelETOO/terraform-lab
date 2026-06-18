locals {
  ip_restrictions = {
    allow_ip = {
      name       = var.app_allow_ip_rule
      priority   = 100
      action     = "Allow"
      ip_address = var.allowed_ip_address
    }

    allow_tm = {
      name        = var.app_allow_tag_rule
      priority    = 110
      action      = "Allow"
      service_tag = "AzureTrafficManager"
    }
  }
}

resource "azurerm_windows_web_app" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  tags                = var.tags

  site_config {
    ip_restriction_default_action = "Deny"

    dynamic "ip_restriction" {
      for_each = local.ip_restrictions

      content {
        name        = ip_restriction.value.name
        priority    = ip_restriction.value.priority
        action      = ip_restriction.value.action
        ip_address  = try(ip_restriction.value.ip_address, null)
        service_tag = try(ip_restriction.value.service_tag, null)
      }
    }
  }
}
