variable "vpc_id" {}
variable "db_subnet_ids" {
  type = list(string)
}

variable "allowed_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/16"]  # EKS 또는 테스트용 CIDR
}

variable "db_name" {}
variable "db_username" {}
variable "db_password" {}
