output "glue_ml_transforms_id" {
  description = "Map of id values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glue_ml_transforms_arn" {
  description = "Map of arn values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "glue_ml_transforms_description" {
  description = "Map of description values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.description if v.description != null && length(v.description) > 0 }
}
output "glue_ml_transforms_glue_version" {
  description = "Map of glue_version values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.glue_version if v.glue_version != null && length(v.glue_version) > 0 }
}
output "glue_ml_transforms_input_record_tables" {
  description = "Map of input_record_tables values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.input_record_tables if v.input_record_tables != null && length(v.input_record_tables) > 0 }
}
output "glue_ml_transforms_label_count" {
  description = "Map of label_count values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.label_count if v.label_count != null }
}
output "glue_ml_transforms_max_capacity" {
  description = "Map of max_capacity values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.max_capacity if v.max_capacity != null }
}
output "glue_ml_transforms_max_retries" {
  description = "Map of max_retries values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.max_retries if v.max_retries != null }
}
output "glue_ml_transforms_name" {
  description = "Map of name values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.name if v.name != null && length(v.name) > 0 }
}
output "glue_ml_transforms_number_of_workers" {
  description = "Map of number_of_workers values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.number_of_workers if v.number_of_workers != null }
}
output "glue_ml_transforms_parameters" {
  description = "Map of parameters values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "glue_ml_transforms_region" {
  description = "Map of region values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glue_ml_transforms_role_arn" {
  description = "Map of role_arn values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "glue_ml_transforms_schema" {
  description = "Map of schema values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "glue_ml_transforms_tags" {
  description = "Map of tags values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "glue_ml_transforms_tags_all" {
  description = "Map of tags_all values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "glue_ml_transforms_timeout" {
  description = "Map of timeout values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.timeout if v.timeout != null }
}
output "glue_ml_transforms_worker_type" {
  description = "Map of worker_type values across all glue_ml_transforms, keyed the same as var.glue_ml_transforms"
  value       = { for k, v in aws_glue_ml_transform.glue_ml_transforms : k => v.worker_type if v.worker_type != null && length(v.worker_type) > 0 }
}

