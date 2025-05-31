variable "cidr_block" {
  type        = string
  description = "value of cidr block"
}

variable "name" {
  type        = string
  description = "value of name"
}

variable "aws_subnet_count" {
  type        = number
  description = "value of aws_subnetcount"
}

variable "localNetworkGW" {
  type        = string
  description = "value of localNetworkGW"
}


variable "backHome" {
  type        = string
  description = "value of backHome"
}

variable "gateway_address" {
  type        = string
  description = "value of gateway address"
}

variable "address_space" {
  type        = string
  description = "value of address space"
}

variable "myfirst_clustername" {
  type        = string
  description = "cluster name"
}

variable "first_clusterversion" {
  type        = string
  description = "cluster version"
}

variable "my_vpc_id" {
  type        = string
  description = "vpc id"
}

variable "my_subnet_ids" {
  type        = list(string)
  description = "subnet ids"
}
