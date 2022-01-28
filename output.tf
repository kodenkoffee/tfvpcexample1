output "azs" {
  value = data.aws_availability_zones.available.names
}

output "myvpc" {
  value = aws_vpc.main.id
}

output "subnet_azA" {
  value = aws_subnet.subnet_azA.id
}

output "subnet_azB" {
  value = aws_subnet.subnet_azB.id
}

output "ami" {
  value = var.image_id
}

output "ec2instance1" {
  value = aws_instance.ec2_instance1[*].id
}

output "ec2instance2" {
  value = aws_instance.ec2_instance2[*].id
}
/*
output "myigw" {
  value = aws_internet_gateway.myigw.id
}
*/