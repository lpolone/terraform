output "o-vpc-id" {
  value = "${aws_vpc.vpc-terraformexaple.id}"
}
output "o-subnet-id" {
  value = "${aws_subnet.subnet-terraformexaple.id}"
}
output "o-igw-id" {
  value = "${aws_internet_gateway.igw-terraformexaple.id}"
}
output "o-route-id" {
  value = "${aws_route_table.route-terraformexaple.id}"
}
output "o-sg-id" {
  value = "${aws_security_group.sg-terraformexaple.id}"
}