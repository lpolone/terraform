provider "aws" {
  region  = "us-west-1"
}

module "create-vpc" {
  source  = "../modules/networking"

  vpc-id    = "${module.create-vpc.o-vpc-id}"
  vpc-name  = "vpc-terraformexaple"
  subnet-id = "${module.create-vpc.o-subnet-id}"
  igw-id    = "${module.create-vpc.o-igw-id}"
  route-id  = "${module.create-vpc.o-route-id}"
  sg-id     = "${module.create-vpc.o-sg-id}"
}
