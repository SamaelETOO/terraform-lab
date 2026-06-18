output "traffic_manager_fqdn" {
  description = "Azure Traffic Manager fully qualified domain name."
  value       = module.traffic_manager.fqdn
}
