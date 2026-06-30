resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  lifecycle {
    ignore_changes = [tags]
  }
}

import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/3088fc2a-c65e-4c26-8bfa-af9661c1f2b9/resourceGroups/cmtr-s0n7ozwy-mod7-rg" 
}

resource "azurerm_storage_account" "sa" {
  name                = var.sa_name
  resource_group_name = var.rg_name
  location            = var.location

  account_tier                     = "Standard"
  account_replication_type         = "LRS"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false

  lifecycle {
    ignore_changes = [
      account_tier,
      account_replication_type,
      access_tier,
      account_kind,
      https_traffic_only_enabled,
      min_tls_version,
      allow_nested_items_to_be_public,
      cross_tenant_replication_enabled,
      tags,
    ]
  }
}

import {
  to = azurerm_storage_account.sa
  id = "/subscriptions/3088fc2a-c65e-4c26-8bfa-af9661c1f2b9/resourceGroups/cmtr-s0n7ozwy-mod7-rg/providers/Microsoft.Storage/storageAccounts/cmtrs0n7ozwymod7sa"
}

resource "azurerm_storage_container" "container" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.sa.name

  lifecycle {
    ignore_changes = [container_access_type]
  }
}

import {
  to = azurerm_storage_container.container
  id = "https://cmtrs0n7ozwymod7sa.blob.core.windows.net/mycontainer"
}

module "cdn" {
  source = "./modules/cdn"

  resource_group_name = var.rg_name
  location            = var.location
  primary_blob_host   = azurerm_storage_account.sa.primary_blob_host
  container_name      = azurerm_storage_container.container.name
  blob_file           = var.blob_file

  fd_profile_name      = var.fd_profile_name
  fd_profile_sku       = var.fd_profile_sku
  fd_endpoint_name     = var.fd_endpoint_name
  fd_origin_group_name = var.fd_origin_group_name
  fd_origin_name       = var.fd_origin_name
  fd_route_name        = var.fd_route_name
}
