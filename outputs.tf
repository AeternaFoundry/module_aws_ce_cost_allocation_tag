output "ce_cost_allocation_tags_id" {
  description = "Map of id values across all ce_cost_allocation_tags, keyed the same as var.ce_cost_allocation_tags"
  value       = { for k, v in aws_ce_cost_allocation_tag.ce_cost_allocation_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ce_cost_allocation_tags_status" {
  description = "Map of status values across all ce_cost_allocation_tags, keyed the same as var.ce_cost_allocation_tags"
  value       = { for k, v in aws_ce_cost_allocation_tag.ce_cost_allocation_tags : k => v.status if v.status != null && length(v.status) > 0 }
}
output "ce_cost_allocation_tags_tag_key" {
  description = "Map of tag_key values across all ce_cost_allocation_tags, keyed the same as var.ce_cost_allocation_tags"
  value       = { for k, v in aws_ce_cost_allocation_tag.ce_cost_allocation_tags : k => v.tag_key if v.tag_key != null && length(v.tag_key) > 0 }
}
output "ce_cost_allocation_tags_type" {
  description = "Map of type values across all ce_cost_allocation_tags, keyed the same as var.ce_cost_allocation_tags"
  value       = { for k, v in aws_ce_cost_allocation_tag.ce_cost_allocation_tags : k => v.type if v.type != null && length(v.type) > 0 }
}

