variable "location" {
  description = "Azure region."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "asp_name" {
  description = "App Service Plan name."
  type        = string
}

variable "asp_sku" {
  description = "App Service Plan SKU."
  type        = string
}

variable "app_name" {
  description = "Linux Web App name."
  type        = string
}

variable "app_dotnet_version" {
  description = "Dotnet version for Linux Web App."
  type        = string
}

variable "sql_connection_string" {
  description = "SQL Database connection string."
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Resource tags."
  type        = map(string)
}
