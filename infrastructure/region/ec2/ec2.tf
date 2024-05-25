module "cloudsentrics" {
  source = "../../..//modules/ec2"

  environment         = "qa"
  instance_type       = "t2.micro"
  instance_count      = "2"
  ami_id              = "ami-07caf09b362be10b8"
  security_group_name = "cloudsentrics"
  aws_region          = "us-east-1"
}
