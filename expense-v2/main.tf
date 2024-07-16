resource "aws_instance" "frontend" {
  for_each      = var.instance_types
  ami           = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = each.key
  }
}

variable "ami" {
  default = "ami-041e2ea9402c46c32"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "security_groups" {
  default = ["sg-06fdd0c03da130266"]
}

variable "instance_types" {
  default = {
    frontend = {
      instance_type = "t2.micro"
    }
    mysql = {
      instance_type = "t2.small"
    }
    backend = {
      instance_type = "t2.small"
    }
  }
}