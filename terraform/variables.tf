variable "aws_region" {
  default = "us-east-1"
  type    = string
}

variable "availability_zone_1a" {
  default = "us-east-1a"
  type    = string
}

variable "availability_zone_1c" {
  default = "us-east-1c"
  type    = string
}

variable "solution_name" {
  default = "nagios"
  type    = string
}

variable "vpc10_cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}

variable "vpc20_cidr_block" {
  default = "20.0.0.0/16"
  type    = string
}

variable "public_subnet_1a1_cidr_block" {
  default = "10.0.1.0/24"
  type    = string
}

variable "public_subnet_1a2_cidr_block" {
  default = "10.0.2.0/24"
  type    = string
}

variable "private_subnet_1c1_cidr_block" {
  default = "20.0.1.0/24"
  type    = string
}

variable "private_subnet_1c2_cidr_block" {
  default = "20.0.2.0/24"
  type    = string
}

variable "ami" {
  default = "ami-0a1179631ec8933d7"
  type    = string
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "instance_key_name" {
  default = "vockey"
  type    = string
}