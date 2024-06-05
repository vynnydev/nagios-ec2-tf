resource "aws_route_table" "rt_vpc10_private" {
 vpc_id = aws_vpc.vpc10.id
 route {    
 cidr_block = "20.0.0.0/16"
 gateway_id = aws_vpc_peering_connection.vpc_peering.id
 }
 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_nat_gateway.ngw_vpc10.id
 }
}

resource "aws_route_table" "rt_vpc20_private" {
 vpc_id = aws_vpc.vpc20.id
 route {    
 cidr_block = "10.0.0.0/16"
 gateway_id = aws_vpc_peering_connection.vpc_peering.id
 }
 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_nat_gateway.ngw_vpc20.id
 }
}