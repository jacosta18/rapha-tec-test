variable "region" {
  default = "eu-west-1"
}

variable "instance_key" {
  default = "TF_key"
}

variable "instance_type" {}
variable "creds" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}