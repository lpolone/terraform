resource "aws_subnet" "subnet-terraformexaple" {
  vpc_id        = "${aws_vpc.vpc-terraformexaple.id}"
  cidr_block    = "10.10.0.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name = "subnet-terraformexaple"
  }
}
