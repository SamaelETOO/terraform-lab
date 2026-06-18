variable "student_email" {
  description = "Email address used as the Creator tag value for all required resources."
  type        = string
}

variable "allowed_ip_address" {
  description = "Verification agent IP address allowed to access the Windows Web Apps."
  type        = string
}

variable "resource_groups" {
  description = "Map of resource group configurations including name and Azure location."
  type = map(object({
    name     = string
    location = string
  }))
}

variable "app_service_plans" {
  description = "Map of App Service Plan configurations including name, resource group reference, OS type, SKU, and worker count."
  type = map(object({
    name               = string
    resource_group_key = string
    os_type            = string
    sku_name           = string
    worker_count       = number
  }))
}

variable "app_services" {
  description = "Map of Windows App Service configurations including name, resource group reference, and App Service Plan reference."
  type = map(object({
    name               = string
    resource_group_key = string
    plan_key           = string
  }))
}

variable "traffic_manager" {
  description = "Traffic Manager profile configuration including name, resource group reference, and routing method."
  type = object({
    name               = string
    resource_group_key = string
    routing_method     = string
  })
}

variable "app_allow_ip_rule" {
  description = "Name of the App Service access restriction rule that allows the verification agent IP address."
  type        = string
}

variable "app_allow_tag_rule" {
  description = "Name of the App Service access restriction rule that allows the AzureTrafficManager service tag."
  type        = string
}
