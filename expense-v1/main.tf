resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06fdd0c03da130266"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06fdd0c03da130266"]
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-06fdd0c03da130266"]
  tags = {
    Name = "mysql"
  }
}