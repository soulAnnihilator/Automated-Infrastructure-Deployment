variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
}

variable "ingress_from_port" {
  description = "Starting port for ingress traffic"
  type        = number
}

variable "ingress_to_port" {
  description = "Ending port for ingress traffic"
  type        = number
}

variable "ingress_protocol" {
  description = "Protocol for ingress traffic"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks for ingress traffic"
  type        = list(string)
}

variable "egress_from_port" {
  description = "Starting port for egress traffic"
  type        = number
}

variable "egress_to_port" {
  description = "Ending port for egress traffic"
  type        = number
}

variable "egress_protocol" {
  description = "Protocol for egress traffic"
  type        = string
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks for egress traffic"
  type        = list(string)
}
