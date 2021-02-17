module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 3.0"

  name        = var.ec2_prefix
  description = var.sg_description
  vpc_id      = var.vpc_id

  ingress_cidr_blocks = var.sg_ingress_cidr_blocks
  ingress_rules       = var.sg_ingress_rules
  egress_rules        = var.sg_egress_rules
}
