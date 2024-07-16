resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group
  tags = {
    Name = "mysql"
  }
}

variable "ami" {
  default = "mi-041e2ea9402c46c32"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "security_groups" {
  default = ["sg-06fdd0c03da130266"]
}