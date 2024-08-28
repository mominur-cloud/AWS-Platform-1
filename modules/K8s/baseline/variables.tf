variable "name" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "subnets" {
  type = list(string)
}
