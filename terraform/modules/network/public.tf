resource "aws_subnet" "sn_vpc10_public" {
  vpc_id                  = aws_vpc.vpc10.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "subnet-public10"
  }
}

resource "aws_subnet" "sn_vpc20_public" {
  vpc_id                  = aws_vpc.vpc20.id
  cidr_block              = "20.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "subnet-public20"
  }
}