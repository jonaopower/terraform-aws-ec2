variable "sg_ingress_cidr_blocks" {
  description = "Ingress CIDR Blocks"
  type        = list(string)
}

variable "sg_ingress_rules" {
  description = "Ingress Rules"
  type        = list(string)
}

variable "sg_egress_rules" {
  description = "Ingress Rules"
  type        = list(string)
}

variable "sg_description" {
  description = "SG Description"
}
