terraform {
  backend "s3" {
    bucket         = "cloudcloudsentrics"
    key            = "backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-lock-table"
    encrypt        = true
  }
}