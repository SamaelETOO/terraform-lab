variable "location" {
  description = "Azure region"
  type        = string
}

variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "storageaccount_name" {
  description = "Storage account name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
}

variable "subnet1_name" {
  description = "First subnet name"
  type        = string
}

variable "subnet1_address_prefixes" {
  description = "First subnet address prefixes"
  type        = list(string)
}

variable "subnet2_name" {
  description = "Second subnet name"
  type        = string
}

variable "subnet2_address_prefixes" {
  description = "Second subnet address prefixes"
  type        = list(string)
}

variable "student_email" {
  description = "Student email for Creator tag"
  type        = string
}
