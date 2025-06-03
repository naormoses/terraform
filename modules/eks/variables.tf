variable "eks_name" {
  type        = string
  description = "eks cluster name"

}

variable "subnet_ids" {
  type        = list(string)
  description = "subnet ids"
}
