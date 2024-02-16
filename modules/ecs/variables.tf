#variable "ami_id" {
 #   description = "The ami id for EC2 instance"
  #  type        = string
#}

#variable "instance_count" {
 #   description = "Number of EC2 instances to create"
  #  type        = number
#}

#variable "instance_type" {
 #   description = "the type of the EC2 instance"
  #  type        = string
#}

variable "region" {
    description = " The region to deploy AWS resource"
    type        = string
}

variable "aws_ami" {
    description = ""
    type        = string
}

variable "instance_type" {
    description = ""
    type        = string
}

variable "availability_zone" {
    description = "This is the AZs where resources are to be provisioned"
    type        = string
}

variable "tags" {
    description = ""
    type        = map
    default     = {}
}
