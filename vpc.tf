resource "aws_vpc" "main" {

  cidr_block           = var.cidr_block
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "myVPC"
  }
}

resource "aws_eip" "associate_eip_ec2" {
  instance = aws_instance.ec2_instance2[0].id
  vpc      = true
}

resource "aws_eip" "associate_eip_subnetA" {
  instance = aws_instance.ec2_instance1[0].id
  vpc      = true
}


