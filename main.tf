module "security_group" {
  source                     = "./modules/SG"
  security_group_name        = var.security_group_name
  security_group_description = var.security_group_description
  ingress_from_port          = var.ingress_from_port
  ingress_to_port            = var.ingress_to_port
  ingress_protocol           = var.ingress_protocol
  ingress_cidr_blocks        = var.ingress_cidr_blocks
  egress_from_port           = var.egress_from_port
  egress_to_port             = var.egress_to_port
  egress_protocol            = var.egress_protocol
  egress_cidr_blocks         = var.egress_cidr_blocks
}

module "ec2" {
  source            = "./modules/EC2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  key_name          = var.key_name
  instance_name     = var.instance_name
}

module "s3" {
  source      = "./modules/S3"
  bucket_name = var.s3_bucket_name
  acl         = var.s3_acl
}

module "rds" {
  source                 = "./modules/RDS"
  storage_size           = var.storage_size
  db_instance_identifier = var.db_instance_identifier
  db_engine              = var.db_engine
  instance_class         = var.instance_class
  db_name                = var.db_name
  db_username            = var.db_username
  db_password            = var.db_password
  multi_az               = var.multi_az
  publicly_accessible    = var.publicly_accessible
}

