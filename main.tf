resource "datadog_webhook_custom_variable" "webhook_custom_variables" {
  for_each = var.webhook_custom_variables

  is_secret = each.value.is_secret
  name      = each.value.name
  value     = each.value.value
}

