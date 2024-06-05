resource "aws_internet_gateway" "igw_vpc10" {
  vpc_id = aws_vpc.vpc10.id
  tags = {
    Name = "igw_vpc10"
  }
}

resource "aws_internet_gateway" "igw_vpc20" {
  vpc_id = aws_vpc.vpc20.id
  tags = {
    Name = "igw_vpc20"
  }
}