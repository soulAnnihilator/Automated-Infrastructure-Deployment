variable "db_instance_identifier" {
  description = "Unique identifier for the RDS instance"
  type        = string
}

variable "storage_size" {
  description = "Allocated storage size in GB for the RDS instance"
  type        = number
}

variable "db_engine" {
  description = "The database engine to use for RDS"
  type        = string
}

variable "instance_class" {
  description = "The instance class to use for RDS"
  type        = string
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
}

variable "db_username" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
}

variable "db_subnet_group_name" {
  description = "Subnet group name for RDS"
  type        = string
  default     = null  # Optional, if you're not specifying a subnet group
}

variable "multi_az" {
  description = "Whether to enable Multi-AZ for RDS"
  type        = bool
}

variable "publicly_accessible" {
  description = "Whether the database instance is publicly accessible"
  type        = bool
}
