output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = try(module.eks.cluster_arn, null)
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = try(module.eks.cluster_certificate_authority_data, null)
}

output "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server"
  value       = try(module.eks.cluster_endpoint, null)
}

output "cluster_id" {
  description = "The ID of the EKS cluster. Note: currently a value is returned only for local EKS clusters created on Outposts"
  value       = try(module.eks.cluster_id, null)
}

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = try(module.eks.cluster_name, null)
}

output "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster for the OpenID Connect identity provider"
  value       = try(module.eks.cluster_oidc_issuer_url, null)
}

output "cluster_version" {
  description = "The Kubernetes version for the cluster"
  value       = try(module.eks.cluster_version, null)
}

output "cluster_platform_version" {
  description = "Platform version for the cluster"
  value       = try(module.eks.cluster_platform_version, null)
}

output "cluster_status" {
  description = "Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`"
  value       = try(module.eks.cluster_status, null)
}

output "cluster_primary_security_group_id" {
  description = "Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication. Referred to as 'Cluster security group' in the EKS console"
  value       = try(module.eks.cluster_primary_security_group_id, null)
}

output "kms_key_arn" {
  description = "The Amazon Resource Name (ARN) of the key"
  value       = module.eks.kms_key_arn
}

output "kms_key_id" {
  description = "The globally unique identifier for the key"
  value       = module.eks.kms_key_id
}

output "cluster_security_group_id" {
  description = "ID of the cluster security group"
  value       = try(module.eks.cluster_security_group_id, null)
}

output "node_security_group_id" {
  description = "ID of the node shared security group"
  value       = try(module.eks.node_security_group_id, null)
}

output "oidc_provider" {
  description = "The OpenID Connect identity provider (issuer URL without leading `https://`)"
  value       = try(replace(module.eks.oidc_provider, "https://", ""), null)
}

output "oidc_provider_arn" {
  description = "The ARN of the OIDC Provider if `enable_irsa = true`"
  value       = try(module.eks.oidc_provider_arn, null)
}

output "cluster_tls_certificate_sha1_fingerprint" {
  description = "The SHA1 fingerprint of the public key of the cluster's certificate"
  value       = try(module.eks.cluster_tls_certificate_sha1_fingerprint, null)
}

output "cluster_iam_role_name" {
  description = "IAM role name of the EKS cluster"
  value       = try(module.eks.cluster_iam_role_name, null)
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN of the EKS cluster"
  value       = try(module.eks.cluster_iam_role_arn, null)
}

output "cluster_iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = try(module.eks.cluster_iam_role_unique_id, null)
}

output "cloudwatch_log_group_name" {
  description = "Name of cloudwatch log group created"
  value       = try(module.eks.cloudwatch_log_group_name, null)
}

output "cloudwatch_log_group_arn" {
  description = "Arn of cloudwatch log group created"
  value       = try(module.eks.cloudwatch_log_group_arn, null)
}

output "eks_managed_node_groups" {
  description = "Map of attribute maps for all EKS managed node groups created"
  value       = try(module.eks.eks_managed_node_group, null)
}

output "eks_managed_node_groups_autoscaling_group_names" {
  description = "List of the autoscaling group names created by EKS managed node groups"
  value       = try(module.eks.eks_managed_node_groups_autoscaling_group_names, null)
}
