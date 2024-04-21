data "aws_secretsmanager_secret" "my_secrets" {
  name = "my-tf-auth"
}

data "aws_secretsmanager_secret_version" "current" {
  secret_id = data.aws_secretsmanager_secret.my_secrets.id
}


resource "aws_secretsmanager_secret" "example" {
  name = "var.secret_name"
}