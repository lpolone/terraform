resource "aws_eip" "eip-terraformexample" {

  instance = "${aws_instance.ec2-terraformexample.id}"
  vpc      = true

  tags = {
      Name = "eip-terraformexample"
  }

}
