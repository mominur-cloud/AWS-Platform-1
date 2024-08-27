provider "aws" {
  region = "ap-southeast-2"
}


module "k8s-role" {
source = "../../../modules/k8s/iam"
eks_role = "cluster-role"
}

module "eks" {
  source = "../../../modules/k8s/baseline"
  depends_on = [ module.k8s-role ]
  name     = "eks-dev"
  role_arn = module.k8s-role.role_arn
  subnets = ["subnet-0d0862007c7f182dd", "subnet-05f217cb97ba8768c"]
}

