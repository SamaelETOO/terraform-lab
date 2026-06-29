resource "azurerm_cdn_frontdoor_profile" "profile" {
  name                = var.fd_profile_name
  resource_group_name = var.resource_group_name
  sku_name            = var.fd_profile_sku
}

resource "azurerm_cdn_frontdoor_endpoint" "endpoint" {
  name                     = var.fd_endpoint_name
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.profile.id
}

resource "azurerm_cdn_frontdoor_origin_group" "origin_group" {
  name                     = var.fd_origin_group_name
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.profile.id
  session_affinity_enabled = false
  load_balancing {}
}

resource "azurerm_cdn_frontdoor_origin" "origin" {
  name                          = var.fd_origin_name
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.origin_group.id
  enabled                       = true
  host_name                     = var.primary_blob_host
  http_port                     = 80
  https_port                    = 443
  origin_host_header            = var.primary_blob_host
  certificate_name_check_enabled = false
  priority                       = 1
  weight                         = 1000
}

resource "azurerm_cdn_frontdoor_route" "route" {
  name                          = var.fd_route_name
  cdn_frontdoor_endpoint_id     = azurerm_cdn_frontdoor_endpoint.endpoint.id
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.origin_group.id
  cdn_frontdoor_origin_ids      = [azurerm_cdn_frontdoor_origin.origin.id]
  patterns_to_match             = ["/*"]
  origin_path                   = "/data"
  supported_protocols           = ["Http", "Https"]
  forwarding_protocol           = "MatchRequest"
  link_to_default_domain        = true
}
