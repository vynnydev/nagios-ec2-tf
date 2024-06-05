resource "aws_route_table" "rt_vpc10_public" {
 vpc_id = aws_vpc.vpc10.id
 route {
 cidr_block = "20.0.0.0/16"
 gateway_id = aws_vpc_peering_connection.vpc_peering.id
 }
 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.igw_vpc10.id
 }
}

resource "aws_route_table" "rt_vpc20_public" {
 vpc_id = aws_vpc.vpc20.id
 route {
 cidr_block = "10.0.0.0/16"
 gateway_id = aws_vpc_peering_connection.vpc_peering.id
 }
 route {
 cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.igw_vpc20.id
 }
}