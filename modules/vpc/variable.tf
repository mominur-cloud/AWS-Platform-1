variable "tags" {
  default = {}
  type = map(any)
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "org_name" {
  description = "prefix-used for all resources"
  default = "acorp"
  type = string 
}

variable "subnets" {
  type        = map(object({
    cidr_block = string
    availability_zone = string
  }))
  description = "Map of subnets with CIDR block and availability zone"
}
