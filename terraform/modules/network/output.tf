output "vpc10_id" {
 value = aws_vpc.vpc10.id
}
output "vpc20_id" {
 value = aws_vpc.vpc20.id
}
output "subnet_pb_id10" {
 value = aws_subnet.sn_vpc10_public.id
}
output "subnet_pb_id20" {
 value = aws_subnet.sn_vpc20_public.id
}
output "subnet_pvt_id10" {
 value = aws_subnet.sn_vpc10_private.id
}
output "subnet_pvt_id20" {
 value = aws_subnet.sn_vpc20_private.id
}