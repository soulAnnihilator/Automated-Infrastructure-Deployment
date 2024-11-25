resource "aws_db_instance" "rds" {
  identifier              = var.db_instance_identifier
  allocated_storage       = var.storage_size
  engine                  = var.db_engine
  instance_class          = var.instance_class
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  db_subnet_group_name    = var.db_subnet_group_name
  publicly_accessible     = var.publicly_accessible
  multi_az                = var.multi_az
  skip_final_snapshot     = false
}
