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


module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "~> 20.31"
  cluster_name    = ver.myfirst_clustername
  cluster_version = var.first_clusterversion

  vpc_id     = var.my_vpc_id
  subnet_ids = var.my_subnet_ids
}
