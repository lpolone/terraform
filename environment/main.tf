provider "aws" {
  region  = "us-west-1"
}

module "create-vpc" {
  source  = "../modules/networking"

  vpc-id    = "${module.create-vpc.o-vpc-id}"
  vpc-name  = "vpc-terraformexample"
  subnet-id = "${module.create-vpc.o-subnet-id}"
  igw-id    = "${module.create-vpc.o-igw-id}"
  route-id  = "${module.create-vpc.o-route-id}"
  sg-id     = "${module.create-vpc.o-sg-id}"
}

module "create-ec2" {
  source  = "../modules/compute"

  vpc-id      = "${module.create-vpc.o-vpc-id}"
  ami-id      = "${module.create-ec2.o-amiubuntu-id}"
  ec2-name    = "terraformexample"
  subnet-id   = "${module.create-vpc.o-subnet-id}"
  sg-id       = ["${module.create-vpc.o-sg-id}"]
}
