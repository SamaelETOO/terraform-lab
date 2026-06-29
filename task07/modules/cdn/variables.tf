variable "resource_group_name" {
  type        = string
  description = "Resource group for the CDN resources"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "primary_blob_host" {
  type        = string
  description = "Primary blob endpoint of the Storage Account"
}

variable "fd_profile_name" {
  type        = string
  description = "Front Door Profile Name"
}

variable "fd_profile_sku" {
  type        = string
  description = "Front Door Profile Sku"
}

variable "fd_endpoint_name" {
  type        = string
  description = "Front Door Endpoint Name"
}

variable "fd_origin_group_name" {
  type        = string
  description = "Front Door Origin group name"
}

variable "fd_origin_name" {
  type        = string
  description = "Front Door Origin Name"
}

variable "fd_route_name" {
  type        = string
  description = "Front Door Route name"
}
