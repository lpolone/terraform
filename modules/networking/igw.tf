resource "aws_internet_gateway" "igw-terraformexample" {
  vpc_id = "${aws_vpc.vpc-terraformexample.id}"

  tags = {
    Name = "igw-terraformexample"
  }
}
