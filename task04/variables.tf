variable "location" {
  description = "Azure region where all resources will be created."
  type        = string
}

variable "rg_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet."
  type        = list(string)
}

variable "nic_name" {
  description = "Name of the network interface."
  type        = string
}

variable "nsg_name" {
  description = "Name of the network security group."
  type        = string
}

variable "nsg_rule_http" {
  description = "Name of the inbound HTTP NSG rule."
  type        = string
}

variable "nsg_rule_ssh" {
  description = "Name of the inbound SSH NSG rule."
  type        = string
}

variable "public_ip" {
  description = "Name of the public IP address."
  type        = string
}

variable "domain_name_label" {
  description = "DNS name label for the public IP address."
  type        = string
}

variable "vm_name" {
  description = "Name of the Linux virtual machine."
  type        = string
}

variable "vm_os_version" {
  description = "Ubuntu image SKU for the Linux virtual machine."
  type        = string
}

variable "vm_SKU" {
  description = "Size/SKU of the Linux virtual machine."
  type        = string
}

variable "vm_admin_username" {
  description = "Admin username for SSH access to the Linux virtual machine."
  type        = string
}

variable "vm_password" {
  description = "Admin password for the Linux virtual machine."
  type        = string
  sensitive   = true
}

variable "student_email" {
  description = "Student email used for the Creator tag."
  type        = string
}
