resource "aws_subnet" "subnet-terraformexample" {
  vpc_id        = "${var.vpc-id}"
  cidr_block    = "10.10.0.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name = "subnet-terraformexample"
  }
}
