# AWS Region
variable "aws_region" {
  description = "AWS Region"
}

# EC2 Variables
variable "ami_id" {
  description = "AMI ID to launch the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key_Pair"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

# S3 Variables
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "s3_acl" {
  description = "The ACL for the S3 bucket"
  type        = string
}

# RDS Variables
variable "storage_size" {
  description = "The allocated storage size for the RDS instance"
  type        = number
}

variable "db_instance_identifier" {
  description = "Unique identifier for the RDS instance"
}

variable "storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
}

variable "db_engine" {
  description = "The database engine for the RDS instance"
  type        = string
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the RDS database"
  type        = string
}

variable "db_username" {
  description = "The master username for the RDS database"
  type        = string
}

variable "db_password" {
  description = "The master password for the RDS database"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The DB subnet group name"
  type        = string
}

variable "multi_az" {
  description = "Whether to enable multi-availability zone deployment"
  type        = bool
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
}

# Security group variables
variable "security_group_name" { type = string }
variable "security_group_description" { type = string }
variable "ingress_from_port" { type = number }
variable "ingress_to_port" { type = number }
variable "ingress_protocol" { type = string }
variable "ingress_cidr_blocks" { type = list(string) }
variable "egress_from_port" { type = number }
variable "egress_to_port" { type = number }
variable "egress_protocol" { type = string }
variable "egress_cidr_blocks" { type = list(string) }