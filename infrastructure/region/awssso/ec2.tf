#module "dev_nginx_servers" {
 # source              = "../../..//modules/ec2"
 # environment         = "dev"
 # instance_type       = "t2.micro"
 # instance_count      = "2"
 # ami_id              = "ami-041feb57c611358bd"
 # security_group_name = "dev-nginx"
 #}

#module "prod_nginx_servers" {
 # source = "../../..//modules/ec2"
 # environment         = "prod"
 # instance_type       = "t2.micro"
 # instance_count      = "3"
 # ami_id              = "ami-041feb57c611358bd"
 # security_group_name = "prod-nginx"
#}

#module "cloudsentrics" {
 # source = "../../..//modules/ec2"

  #environment         = "sandbox"
  #instance_type       = "t2.micro"
  #instance_count      = "6"
  #ami_id              = "ami-041feb57c611358bd"
  #security_group_name = "cloudsentrics"
#}


module "ec2_instance" {

  source = "../../..//modules/ecs"
  aws_ami = "ami-041feb57c611358bd"
  instance_type = "t2.micro"
  region = "us-east-1"
  availability_zone = "us-east-1b"
  tags  = {
    name = "devsec-instance"
  }
}