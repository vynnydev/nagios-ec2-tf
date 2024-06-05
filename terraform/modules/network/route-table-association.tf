resource "aws_route_table_association" "rt_vpc_To_snpub_vpc10" {
  subnet_id      = aws_subnet.sn_vpc10_public.id
  route_table_id = aws_route_table.rt_vpc10_public.id
}

resource "aws_route_table_association" "rt_vpc_To_snpub_vpc20" {
  subnet_id      = aws_subnet.sn_vpc20_public.id
  route_table_id = aws_route_table.rt_vpc20_public.id
}

resource "aws_route_table_association" "rt_vpc_To_snpvt_vpc10" {
  subnet_id      = aws_subnet.sn_vpc10_private.id
  route_table_id = aws_route_table.rt_vpc10_private.id
}

resource "aws_route_table_association" "rt_vpc_To_snpvt_vpc20" {
  subnet_id      = aws_subnet.sn_vpc20_private.id
  route_table_id = aws_route_table.rt_vpc20_private.id
}