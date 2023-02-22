variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {}
variable "creds" {}
variable "instance_key" {
  default = "TF_key"
}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}