provider "aws" {
  region = "ap-southeast-2"
}
//module
module "vpc-subnets" {
  source = "../../../modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  subnets = {
    public_subnet = {
      cidr_block       = "10.0.1.0/24"
      availability_zone = "apse2-az1"
    }
  }
}
