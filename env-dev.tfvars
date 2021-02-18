# AWS data
vpc_id      = "vpc-03d9702a457018484"
aws_region  = "sa-east-1"
aws_profile = "jonas-aws"
#subnet_ids  = "subnet-0bb97f09825816d44"
subnet_ids  = ["subnet-0bb97f09825816d44", "subnet-09d549e3b568c39c5"]

# EC2 Instance data
ec2_prefix                  = "Rundeck"
ec2_num_suffix              = true
ec2_num_suffix_format       = "-%d"
ec2_count                   = 1
ec2_volume_type             = "gp3"
ec2_ami                     = "ami-0e765cee959bcbfce"
ec2_instance_type           = "t2.micro"
ec2_key                     = "Mac-Pessoal"
ec2_monitoring              = false
ec2_disable_api_termination = true
ec2_public_ip_address       = true
ec2_sgs_ids                 = ["sg-004cfd2f0cbdd393f", "sg-01c8ebb0eab7e321c"] # Lista de Security Group IDs para aplicar na nova EC2 alem do novo SG criado por este script. Esta lista pode ser vazia. Ex: []
#ec2_sgs_ids                 = []
ec2_root_block_device = [{
  delete_on_termination = true
  encrypted             = false
  volume_size           = "8"
  volume_type           = "gp3"
  ios                   = ""
}]


# Security Group Data
sg_ingress_cidr_blocks = ["0.0.0.0/0"]
sg_ingress_rules       = ["http-80-tcp", "all-icmp"]
sg_egress_rules        = ["all-all"]
sg_description         = "Security Group para Servidor Rundeck"

# Tags padroes
default_tags = {
  Produto  = "Rundeck AWS"
  Tribo    = "Producao"
  Squad    = "Devops"
  Ambiente = "Dev"
}
