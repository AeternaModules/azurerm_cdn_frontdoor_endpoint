output "cdn_frontdoor_endpoints_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.cdn_frontdoor_profile_id }
}
output "cdn_frontdoor_endpoints_enabled" {
  description = "Map of enabled values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.enabled }
}
output "cdn_frontdoor_endpoints_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.host_name }
}
output "cdn_frontdoor_endpoints_name" {
  description = "Map of name values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.name }
}
output "cdn_frontdoor_endpoints_tags" {
  description = "Map of tags values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.tags }
}

