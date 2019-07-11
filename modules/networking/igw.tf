resource "aws_internet_gateway" "igw-awshashcat" {
  vpc_id = "${aws_vpc.vpc-awshashcat.id}"

  tags = {
    Name = "igw-awshashcat"
  }
}
