resource "aws_security_group" "test_all_access" {
  name = "allow-all-access"

  vpc_id = aws_vpc.main.id

  ingress {
    description = "allow anyone to connect through 22"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  egress {
    description = "egress defines tile for outgoing traffic and we have allow all "
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = {
    Name = "my-sg"
  }
}