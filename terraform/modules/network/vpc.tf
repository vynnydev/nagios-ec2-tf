resource "aws_vpc" "vpc10" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  tags = {
    Name = "vpc10"
  }
}

resource "aws_vpc" "vpc20" {
  cidr_block           = "20.0.0.0/16"
  enable_dns_hostnames = "true"
  tags = {
    Name = "vpc20"
  }
}

resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_vpc_id   = aws_vpc.vpc10.id
  vpc_id        = aws_vpc.vpc20.id
  auto_accept   = true

  tags = {
    Name = "VPC Peering between vpc10 and vpc20"
  }
}