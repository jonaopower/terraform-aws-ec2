variable "ec2_prefix" {
  description = "AWS Instance Name Prefix"
}

variable "ec2_count" {
  description = "AWS Instance Number to be created"
}

variable "ec2_ami" {
  description = "AWS Instance AMI"
}

variable "ec2_instance_type" {
  description = "AWS Instance Type/Size"
}

variable "ec2_monitoring" {
  description = "AWS Instance Monitoring"
}

variable "ec2_key" {
  description = "AWS Instance SSH Key"
}

variable "ec2_volume_type" {
  description = "AWS Instance Volume Type"
}

variable "ec2_sgs_ids" {
  description = "AWS Instance Security Group"
  type        = list(string)

}

variable "ec2_disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection"
  type        = bool

}

variable "ec2_public_ip_address" {
  description = "If true, Gives a public Ip address to the instance"
  type        = bool

}

variable "ec2_root_block_device" {
  description = "Customize details about the root block device of the instance. See Block Devices below for details"
  type        = list(map(string))
}
