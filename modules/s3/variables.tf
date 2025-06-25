variable "bucket_name" {
  type        = string
  description = "S3 버킷 이름"
}

variable "tags" {
  type        = map(string)
  description = "태그"
  default     = {}
}
