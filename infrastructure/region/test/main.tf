# Data block to find the latest Amazon Linux 2 AMI based on specified filters
data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["amazon"]
}

# Resource block to create an EC2 instance with the AMI ID found by the data block
resource "aws_instance" "my_ec2_instance" {
  ami           = data.aws_ami.amazon_linux.id # Uses the AMI ID from the data block
  instance_type = "t2.micro" # This choice is independent of the data block
  # Additional configurations...
}
