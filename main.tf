module "eks" {
  source                               = "terraform-aws-modules/eks/aws"
  version                              = "~> 19.0"
  cluster_name                         = var.cluster_name
  cluster_version                      = var.cluster_version
  vpc_id                               = var.vpc_id
  subnet_ids                           = var.subnet_ids
  cluster_enabled_log_types            = var.cluster_enabled_log_types
  cluster_endpoint_private_access      = true
  cluster_endpoint_public_access       = var.cluster_endpoint_public_access
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs
  create_kms_key                       = var.create_kms_key
  kms_key_administrators               = var.kms_key_administrators
  enable_irsa                          = var.enable_irsa
  cluster_addons                       = var.cluster_addons
  eks_managed_node_group_defaults      = var.eks_managed_node_group_defaults
  eks_managed_node_groups              = var.eks_managed_node_groups
  tags                                 = var.tags
}