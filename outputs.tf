output "webhook_custom_variables_id" {
  description = "Map of id values across all webhook_custom_variables, keyed the same as var.webhook_custom_variables except keys with no id are omitted"
  value       = { for k, v in datadog_webhook_custom_variable.webhook_custom_variables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "webhook_custom_variables_is_secret" {
  description = "Map of is_secret values across all webhook_custom_variables, keyed the same as var.webhook_custom_variables except keys with no is_secret are omitted"
  value       = { for k, v in datadog_webhook_custom_variable.webhook_custom_variables : k => v.is_secret if v.is_secret != null }
}
output "webhook_custom_variables_name" {
  description = "Map of name values across all webhook_custom_variables, keyed the same as var.webhook_custom_variables except keys with no name are omitted"
  value       = { for k, v in datadog_webhook_custom_variable.webhook_custom_variables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "webhook_custom_variables_value" {
  description = "Map of value values across all webhook_custom_variables, keyed the same as var.webhook_custom_variables except keys with no value are omitted"
  value       = { for k, v in datadog_webhook_custom_variable.webhook_custom_variables : k => v.value if v.value != null && length(v.value) > 0 }
  sensitive   = true
}

