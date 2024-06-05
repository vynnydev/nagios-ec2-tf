resource "aws_subnet" "sn_vpc10_private" {
  vpc_id                  = aws_vpc.vpc10.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1c"
  tags = {
    Name = "subnet-private10"
  }
}

resource "aws_subnet" "sn_vpc20_private" {
  vpc_id                  = aws_vpc.vpc20.id
  cidr_block              = "20.0.2.0/24"
  availability_zone       = "us-east-1c"
  tags = {
    Name = "subnet-private20"
  }
}