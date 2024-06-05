resource "aws_nat_gateway" "ngw_vpc10" {
  allocation_id = aws_eip.ngw_vpc10.id
  subnet_id     = aws_subnet.sn_vpc10_public.id

  tags = {
    Name = "gw NAT10"
  }


  depends_on = [aws_internet_gateway.igw_vpc10]
}


resource "aws_nat_gateway" "ngw_vpc20" {
  allocation_id = aws_eip.ngw_vpc20.id
  subnet_id     = aws_subnet.sn_vpc20_public.id

  tags = {
    Name = "gw NAT20"
  }

 depends_on = [aws_internet_gateway.igw_vpc20]
}
