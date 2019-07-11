resource "aws_security_group" "sg-terraformexaple" {
  name        = "terraformexaple-sg"
  description = "sg-terraformexaple"
  vpc_id      = "${aws_vpc.vpc-terraformexaple.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
