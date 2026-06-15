location = "eastus"

rg_name = "cmaz-s0n7ozwy-mod4-rg"

vnet_name               = "cmaz-s0n7ozwy-mod4-vnet"
vnet_address_space      = ["10.0.0.0/16"]
subnet_name             = "frotend"
subnet_address_prefixes = ["10.0.1.0/24"]

nic_name          = "cmaz-s0n7ozwy-mod4-nic"
nsg_name          = "cmaz-s0n7ozwy-mod4-nsg"
nsg_rule_http     = "Allow-HTTP"
nsg_rule_ssh      = "Allow-SSH"
public_ip         = "cmaz-s0n7ozwy-mod4-pip"
domain_name_label = "cmaz-s0n7ozwy-mod4-nginx"

vm_name           = "cmaz-s0n7ozwy-mod4-vm"
vm_os_version     = "ubuntu-24_04-lts"
vm_SKU            = "Standard_B2s_v2"
vm_admin_username = "azureuser"

student_email = "giorgi_imerlishvili1@epam.com"
