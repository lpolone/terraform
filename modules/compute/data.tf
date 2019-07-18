# Ami Ubuntu
data "aws_ami" "data-ubuntu" {
  most_recent = "true"
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

# You can use this in aws cli:
# aws ec2 describe-images --filters Name=name,Values=ubuntu-trusty-16.04-amd64-server-*
