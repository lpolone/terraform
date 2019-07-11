resource "aws_route_table" "route-terraformexaple" {  
  vpc_id  = "${aws_vpc.vpc-terraformexaple.id}"

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = "${aws_internet_gateway.igw-terraformexaple.id}"
  }

  tags = {
    Name = "route-terraformexaple"
  }
}

resource "aws_route_table_association" "route-association-terraformexaple" {

  route_table_id  = "${aws_route_table.route-terraformexaple.id}"
  subnet_id       = "${aws_subnet.subnet-terraformexaple.id}"
}
