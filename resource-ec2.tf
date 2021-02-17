module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name              = var.ec2_prefix
  use_num_suffix    = var.ec2_num_suffix
  num_suffix_format = var.ec2_num_suffix_format
  instance_count    = var.ec2_count

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key
  monitoring    = var.ec2_monitoring
  #vpc_security_group_ids = var.ec2_sgs_ids
  vpc_security_group_ids      = concat([module.security_group.this_security_group_id], var.ec2_sgs_ids)
  subnet_id                   = var.subnet_ids
  associate_public_ip_address = var.ec2_public_ip_address
  root_block_device           = var.ec2_root_block_device

  # Define tags para ec2 e volume
  tags = merge(
    var.default_tags,
    {
      Name = var.ec2_prefix
    },
  )


  volume_tags = merge(
    var.default_tags,
    {
      Name = "Disco-${var.ec2_prefix}"
    },
  )

}
