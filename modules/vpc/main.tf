terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = var.tags
}

resource "aws_subnet" "main" {
  for_each = var.subnets
 
  availability_zone_id = each.value.availability_zone
  cidr_block = each.value.cidr_block
  vpc_id     = aws_vpc.main.id
  tags = var.tags
}
