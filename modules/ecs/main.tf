#resource "aws_instance" "my_ec2_instances" {
 # ami                     = var.ami_id
  #count                   = var.instance_count
  #instance_type           = var.instance_type
#}



#resource "aws_s3_bucket" "example" {
 # bucket = "my-tf-test-bucket"
  #versioning  = enable

  #tags = {
   # Name        = "My bucket"
    #Environment = "Dev"
  #}
#}


resource "aws_instance" "my_first_instance_module" {
  ami                     = var.aws_ami
  instance_type           = var.instance_type
  availability_zone       = var.availability_zone
  tags                    = var.tags
}