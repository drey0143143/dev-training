output "secret_key" {
    value = var.output_secrets ? local.secret_values["secret_key"]: "Secrets not displayed"
    description = "The AWS secret key stored in Secrets Manager"
    sensitive = true
}

output "access_key" {
    value = var.output_secrets ? local.secret_values["access_key"]: "Secrets not displayed" 
    description = "The AWS access key stored in Secrets Manager"
    sensitive = true
}

value = if output_secrets is true local.secrets_values[secrets_key] ,else secrets not displayed