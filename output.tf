output "security_group_id" {
  value = module.security_group.security_group_id
}

output "ec2_instance_id" {
  value = module.ec2.ec2_instance_id
}

output "s3_bucket_name" {
  value = module.s3.s3_bucket_name
}

output "rds_instance_endpoint" {
  value = module.rds.rds_instance_endpoint
}

output "rds_instance_id" {
  value = module.rds.rds_instance_id
}
