module "dev_ec2" {
  source            = "../../..//modules/ecs"
  ami_id            = "ami-0277155c3f0ab2930"
  instance_count    = 3
  instance_type     = "t2.micro"
  region            = "us-east-1"
}



module "prod_ec2" {
  source            = "../../..//modules/ecs"
  ami_id            = "ami-0277155c3f0ab2930"
  instance_count    = 5
  instance_type     = "t2.small"
  region            = "us-east-1"
}