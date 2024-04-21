resource "aws_s3_bucket" "batch4_s3" {
  bucket = "cloud-cloud-batch4-s3-versioning"
}

#resource "aws_s3_bucket_acl" "batch4_s3_acl" {
 # bucket = aws_s3_bucket.batch4_s3.id
 # acl    = "private"
#}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.batch4_s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_instance" "my-3rd-server" {
  ami                     = "ami-080e1f13689e07408"
  instance_type           = "t2.micro"

  tags = {
    Name = "my-3rd-instance"
  }
}