resource "aws_route_table" "route-terraformexample" {  
  vpc_id  = "${aws_vpc.vpc-terraformexample.id}"

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = "${var.igw-id}"
  }

  tags = {
    Name = "route-terraformexaple"
  }
}

resource "aws_route_table_association" "route-association-terraformexample" {

  subnet_id       = "${var.subnet-id}"
  route_table_id  = "${aws_route_table.route-terraformexample.id}"
}
