variable "region" {
  default = "ap-south-1"
}

variable "access_key" {
  description = "the value will be pulled from terraform cloud workspace environment variable"
}

variable "secret_key" {
  description = "the value will be pulled from terraform cloud workspace environment variable"
}

variable "cidr_block" {
  default = "172.31.0.0/16"
}

variable "subnet_azA_cidr" {
  default = "172.31.0.0/20"
}

variable "subnet_azB_cidr" {
  default = "172.31.16.0/20"
}

variable "image_id" {
  default = "ami-08ee6644906ff4d6c"
}

variable "create_ec2_instance" {
  default = "false"
}