output "cdn_frontdoor_endpoints" {
  description = "All cdn_frontdoor_endpoint resources"
  value       = azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints
}
output "cdn_frontdoor_endpoints_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_endpoints"
  value       = [for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_endpoints_enabled" {
  description = "List of enabled values across all cdn_frontdoor_endpoints"
  value       = [for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : v.enabled]
}
output "cdn_frontdoor_endpoints_host_name" {
  description = "List of host_name values across all cdn_frontdoor_endpoints"
  value       = [for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : v.host_name]
}
output "cdn_frontdoor_endpoints_name" {
  description = "List of name values across all cdn_frontdoor_endpoints"
  value       = [for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : v.name]
}
output "cdn_frontdoor_endpoints_tags" {
  description = "List of tags values across all cdn_frontdoor_endpoints"
  value       = [for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : v.tags]
}

