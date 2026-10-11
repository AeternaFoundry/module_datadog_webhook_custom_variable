variable "webhook_custom_variables" {
  description = <<EOT
Map of webhook_custom_variables, attributes below
Required:
    - is_secret
    - name
    - value
EOT

  type = map(object({
    is_secret = bool
    name      = string
    value     = string
  }))
}

