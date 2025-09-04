provider "aws" {
region = "ap-south-1"

}

resource "aws_instance" "key" {
ami = "ami-0861f4e788f5069dd"
instance_type = "t2.micro"
key_name = "mono.pem"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
