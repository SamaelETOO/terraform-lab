locals {
  location  = var.location
  rg_name   = var.rg_name
  sa_name   = var.sa_name
  blob_file = var.blob_file

  container_resource_id = "https://${var.sa_name}.blob.core.windows.net/${var.container_name}"
}
