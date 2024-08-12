terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}
resource "aws_eks_cluster" "eks" {
  name     = var.name
  role_arn = var.role_arn

  vpc_config {
    subnet_ids = var.subnets
  }
}