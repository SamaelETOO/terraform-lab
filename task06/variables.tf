variable "location" {
  description = "Azure region for the new resources."
  type        = string
}

variable "kv_rg_name" {
  description = "Existing Key Vault resource group name."
  type        = string
}

variable "kv_name" {
  description = "Existing Key Vault name."
  type        = string
}

variable "name_prefix" {
  description = "Resource name prefix used to generate names in locals.tf."
  type        = string
}

variable "student_email" {
  description = "Student email used for Creator tag."
  type        = string
}

variable "sql_admin_username" {
  description = "SQL Server administrator username."
  type        = string
  default     = "sqladminuser"
}

variable "sql_admin_secret_name" {
  description = "Key Vault secret name for SQL admin username."
  type        = string
}

variable "sql_admin_secret_password" {
  description = "Key Vault secret name for SQL admin password."
  type        = string
}

variable "sql_sku" {
  description = "SQL Database SKU/service model."
  type        = string
}

variable "sql_fwr_name" {
  description = "SQL firewall rule name for allowed verification IP."
  type        = string
}

variable "allowed_ip_address" {
  description = "Public IP address allowed to connect to SQL Server."
  type        = string
}

variable "asp_sku" {
  description = "App Service Plan SKU."
  type        = string
}

variable "app_dotnet_version" {
  description = "Dotnet version for Linux Web App."
  type        = string
}
