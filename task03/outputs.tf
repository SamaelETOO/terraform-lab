output "rg_id" {
  description = "Resource group ID"
  value       = azurerm_resource_group.main.id
}

output "sa_blob_endpoint" {
  description = "Storage account blob service primary endpoint"
  value       = azurerm_storage_account.main.primary_blob_endpoint
}

output "vnet_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.main.id
}
