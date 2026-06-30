# task07/variables.tf
variable "location" {
  type        = string
  description = "Azure region"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "rg_id" {
  type        = string
  description = "Resource group ID (used for import)"
}

variable "sa_name" {
  type        = string
  description = "Storage account name"
}

variable "sa_id" {
  type        = string
  description = "Storage account ID (used for import)"
}

variable "blob_file" {
  type        = string
  description = "Name of the blob file in the Storage Account"
}

variable "fd_profile_name" {
  type        = string
  description = "CDN Front Door profile name"
}

variable "fd_profile_sku" {
  type        = string
  description = "SKU for the CDN Front Door profile"
}

variable "fd_endpoint_name" {
  type        = string
  description = "CDN Front Door endpoint name"
}

variable "fd_origin_group_name" {
  type        = string
  description = "CDN Front Door origin group name"
}

variable "fd_origin_name" {
  type        = string
  description = "CDN Front Door origin name"
}

variable "fd_route_name" {
  type        = string
  description = "CDN Front Door route name"
}

variable "container_name" {
  type        = string
  description = "Name of the existing blob container in the Storage Account that holds the target blob file"
}
