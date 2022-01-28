resource "aws_instance" "ec2_instance1" {
  count           = var.create_ec2_instance ? 1 : 0
  ami             = var.image_id
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.subnet_azA.id
  key_name        = var.aws_key_pair_name
  security_groups = [aws_security_group.test_all_access.id]

  tags = {
    Name = "ec2_subnetA"
  }
}

resource "aws_instance" "ec2_instance2" {
  count           = var.create_ec2_instance ? 1 : 0
  ami             = var.image_id
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.subnet_azB.id
  key_name        = var.aws_key_pair_name
  security_groups = [aws_security_group.test_all_access.id]

  tags = {
    Name = "ec2_subnetB"
  }
}