resource "aws_glue_ml_transform" "glue_ml_transforms" {
  for_each = var.glue_ml_transforms

  name              = each.value.name
  role_arn          = each.value.role_arn
  description       = each.value.description
  glue_version      = each.value.glue_version
  max_capacity      = each.value.max_capacity
  max_retries       = each.value.max_retries
  number_of_workers = each.value.number_of_workers
  region            = each.value.region
  tags              = each.value.tags
  tags_all          = each.value.tags_all
  timeout           = each.value.timeout
  worker_type       = each.value.worker_type

  dynamic "input_record_tables" {
    for_each = each.value.input_record_tables
    content {
      catalog_id      = input_record_tables.value.catalog_id
      connection_name = input_record_tables.value.connection_name
      database_name   = input_record_tables.value.database_name
      table_name      = input_record_tables.value.table_name
    }
  }

  parameters {
    find_matches_parameters {
      accuracy_cost_trade_off    = each.value.parameters.find_matches_parameters.accuracy_cost_trade_off
      enforce_provided_labels    = each.value.parameters.find_matches_parameters.enforce_provided_labels
      precision_recall_trade_off = each.value.parameters.find_matches_parameters.precision_recall_trade_off
      primary_key_column_name    = each.value.parameters.find_matches_parameters.primary_key_column_name
    }
    transform_type = each.value.parameters.transform_type
  }
}

