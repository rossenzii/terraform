variable "table_name" {
  type = string
  description = "the name of the dynamo table"
}
variable "hash_key" {
  type = string
  description = "the paritition key name"
}
variable "environment" {
  type = string
  default = "dev71"
}
variable "purpose" {
  type = string
  default = "terraform-state-lock71"
}
 