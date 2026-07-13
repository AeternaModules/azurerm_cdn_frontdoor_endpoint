variable "cdn_frontdoor_endpoints" {
  description = <<EOT
Map of cdn_frontdoor_endpoints, attributes below
Required:
    - cdn_frontdoor_profile_id
    - name
Optional:
    - enabled
    - tags
EOT

  type = map(object({
    cdn_frontdoor_profile_id = string
    name                     = string
    enabled                  = optional(bool)
    tags                     = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cdn_frontdoor_endpoints : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

