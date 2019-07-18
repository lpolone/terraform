resource "aws_key_pair" "kp-terraformexample" {

  key_name    = "kp-terraformexample" 
  public_key  = "${file("kp-terraformexample.pub")}"
}
