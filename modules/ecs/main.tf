resource "aws_instance" "this" {
  ami                     = var.ami_id
  count                   = var.instance_count
  instance_type           = var.instance_type
}



resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
  versioning  = enable

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}