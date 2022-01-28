
resource "aws_subnet" "subnet_azA" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_azA_cidr
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "subnet_azA"
  }
}

resource "aws_subnet" "subnet_azB" {
  cidr_block        = var.subnet_azB_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "subnet_azB"
  }
}
