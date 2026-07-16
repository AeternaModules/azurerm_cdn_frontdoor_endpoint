output "cdn_frontdoor_endpoints_id" {
  description = "Map of id values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_frontdoor_endpoints_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.cdn_frontdoor_profile_id if v.cdn_frontdoor_profile_id != null && length(v.cdn_frontdoor_profile_id) > 0 }
}
output "cdn_frontdoor_endpoints_enabled" {
  description = "Map of enabled values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.enabled if v.enabled != null }
}
output "cdn_frontdoor_endpoints_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.host_name if v.host_name != null && length(v.host_name) > 0 }
}
output "cdn_frontdoor_endpoints_name" {
  description = "Map of name values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cdn_frontdoor_endpoints_tags" {
  description = "Map of tags values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = { for k, v in azurerm_cdn_frontdoor_endpoint.cdn_frontdoor_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

