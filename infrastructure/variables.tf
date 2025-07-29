variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "vpc_id" {
  description = "VPC ID for the ElastiCache cluster"
  type        = string
}

## Elasticache
variable "elasticache_subnet_ids" {
  description = "List of subnet IDs for ElastiCache subnet group"
  type        = list(string)
}

## RDS
variable "db_subnet_ids" {
  type = list(string)
}

variable "allowed_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/16"]  # 테스트용 CIDR
}

variable "db_password" {
  description = "Master password for RDS"
  type        = string
  sensitive   = true
}