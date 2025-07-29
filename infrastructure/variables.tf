variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "vpc_id" {
  description = "VPC ID for the ElastiCache cluster"
  type        = string
}

variable "elasticache_subnet_ids" {
  description = "List of subnet IDs for ElastiCache subnet group"
  type        = list(string)
}
