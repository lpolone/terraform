output "o-vpc-id" {
  value = "${aws_vpc.vpc-terraformexample.id}"
}
output "o-subnet-id" {
  value = "${aws_subnet.subnet-terraformexample.id}"
}
output "o-igw-id" {
  value = "${aws_internet_gateway.igw-terraformexample.id}"
}
output "o-route-id" {
  value = "${aws_route_table.route-terraformexample.id}"
}
output "o-sg-id" {
  value = "${aws_security_group.sg-terraformexample.id}"
}