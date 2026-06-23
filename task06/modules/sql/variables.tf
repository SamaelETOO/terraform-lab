variable "location" {
  description = "Azure region."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "sql_server_name" {
  description = "SQL Server name."
  type        = string
}

variable "sql_db_name" {
  description = "SQL Database name."
  type        = string
}

variable "sql_sku" {
  description = "SQL Database SKU."
  type        = string
}

variable "sql_fwr_name" {
  description = "SQL firewall rule name."
  type        = string
}

variable "allowed_ip_address" {
  description = "Allowed public IP address for SQL firewall."
  type        = string
}

variable "sql_admin_username" {
  description = "SQL administrator username."
  type        = string
}

variable "sql_admin_secret_name" {
  description = "Key Vault secret name for SQL admin username."
  type        = string
}

variable "sql_admin_secret_password" {
  description = "Key Vault secret name for SQL admin password."
  type        = string
}

variable "key_vault_id" {
  description = "Existing Key Vault ID."
  type        = string
}

variable "tags" {
  description = "Resource tags."
  type        = map(string)
}
