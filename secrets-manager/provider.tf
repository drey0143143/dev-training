provider "aws" {
  region     = "us-east-1"
}

locals {
    secret_values = jsondecode(data.aws_secretsmanager_secret_version.current.secret_string)
}
