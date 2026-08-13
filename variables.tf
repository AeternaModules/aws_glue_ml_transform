variable "glue_ml_transforms" {
  description = <<EOT
Map of glue_ml_transforms, attributes below
Required:
    - name
    - role_arn
    - input_record_tables (block):
        - catalog_id (optional)
        - connection_name (optional)
        - database_name (required)
        - table_name (required)
    - parameters (block):
        - find_matches_parameters (required, block):
            - accuracy_cost_trade_off (optional)
            - enforce_provided_labels (optional)
            - precision_recall_trade_off (optional)
            - primary_key_column_name (optional)
        - transform_type (required)
Optional:
    - description
    - glue_version
    - max_capacity
    - max_retries
    - number_of_workers
    - region
    - tags
    - tags_all
    - timeout
    - worker_type
EOT

  type = map(object({
    name              = string
    role_arn          = string
    description       = optional(string)
    glue_version      = optional(string)
    max_capacity      = optional(number)
    max_retries       = optional(number)
    number_of_workers = optional(number)
    region            = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    timeout           = optional(number)
    worker_type       = optional(string)
    input_record_tables = list(object({
      catalog_id      = optional(string)
      connection_name = optional(string)
      database_name   = string
      table_name      = string
    }))
    parameters = object({
      find_matches_parameters = object({
        accuracy_cost_trade_off    = optional(number)
        enforce_provided_labels    = optional(bool)
        precision_recall_trade_off = optional(number)
        primary_key_column_name    = optional(string)
      })
      transform_type = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.glue_ml_transforms : (
        length(v.input_record_tables) >= 1
      )
    ])
    error_message = "Each input_record_tables list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.glue_ml_transforms : (
        v.max_retries == null || (v.max_retries >= 0 && v.max_retries <= 10)
      )
    ])
    error_message = "must be between 0 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.glue_ml_transforms : (
        v.number_of_workers == null || (v.number_of_workers >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

