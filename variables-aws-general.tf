variable "aws_profile" {
  description = "AWS Credential Profile"
}

variable "aws_region" {
  description = "AWS Region"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "default_tags" {
  type = map(any)
  #   default = {
  #     Produto = "Rundeck AWS - AGIL PRD"
  #     Tribo   = "Producao"
  #     Squad   = "Devops"
  #   }
}

variable "subnet_ids" {
  description = "A list of VPC Subnet IDs to launch in"
  #type        = list(string)
  #   default     = []
}
