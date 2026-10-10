variable "ce_cost_allocation_tags" {
  description = <<EOT
Map of ce_cost_allocation_tags, attributes below
Required:
    - status
    - tag_key
EOT

  type = map(object({
    status  = string
    tag_key = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.ce_cost_allocation_tags : (
        length(v.tag_key) >= 1 && length(v.tag_key) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

