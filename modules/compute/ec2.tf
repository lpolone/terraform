resource "aws_instance" "ec2-terraformexample" {
  
  ami                         = "${var.ami-id}"
  instance_type               = "t2.micro"
  availability_zone           = "us-west-1a"
  subnet_id                   = "${var.subnet-id}"
  key_name                    = "kp-terraformexample"
  vpc_security_group_ids      = ["${element(var.sg-id, 0)}"]
  associate_public_ip_address = true

  root_block_device {
    volume_size = "30"
  }

  connection {
    host        = "self.public_ip"
    user        = "admin"
    private_key = "${file("kp-terraformexample.pem")}"
    timeout     = "1m"
  }
 
    provisioner "file" {
    source      = "bootstrap.sh"
    destination = "/tmp/bootstrap.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/bootstrap.sh",
      "sudo /tmp/bootstrap.sh", 
    ]
  }

  tags = {
    Name = "ec2-terraformexample"
  }

}
