# Documentacao outputs do modulo: https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest?tab=outputs

output "azs" {
  description = "List of IDs of AZs"
  value       = module.ec2_cluster.availability_zone
}

output "private_ip" {
  description = "List of Private IPs"
  value       = module.ec2_cluster.private_ip
}

output "public_ip" {
  description = "List of Public IPs"
  value       = module.ec2_cluster.public_ip
}

output "arn" {
  description = "List of Public ARNs"
  value       = module.ec2_cluster.arn
}

output "root_block_device_volume_ids" {
  description = "List of Volumes IDs"
  value       = module.ec2_cluster.root_block_device_volume_ids
}

output "vpc_security_group_ids" {
  description = "List of SGs IDs"
  value       = module.ec2_cluster.vpc_security_group_ids
}


