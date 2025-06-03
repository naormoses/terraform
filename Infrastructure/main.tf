module "aws_vpc" {
  source = "../modules/vpc"

  cidr_block           = var.cidr_block
  name                 = var.name
  aws_subnet_count     = var.aws_subnet_count
  localNetworkGW       = var.localNetworkGW
  backHome             = var.backHome
  gateway_address      = var.gateway_address
  address_space        = var.address_space
  myfirst_clustername  = var.myfirst_clustername
  first_clusterversion = var.first_clusterversion
}


module "aws_eks_cluster" {
  source = "../modules/eks"
}
