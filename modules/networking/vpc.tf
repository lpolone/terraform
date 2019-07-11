resource "aws_vpc" "vpc-terraformexaple" {
  cidr_block  = "10.10.0.0/16"
 
  tags = {
    Name = "vpc-terraformexaple"
  }
}
