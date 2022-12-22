output "VPC_ID" {
  description = "The ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "VPC_Private_Subnets" {
  description = "VPC Private Subnets"
  value       = module.vpc.private_subnets
}

output "VPC_Public_Subnets" {
  description = "VPC Public Subnets"
  value       = module.vpc.public_subnets
}

output "VPC_main_route_table_id" {
  description = "VPC main route table id"
  value       = module.vpc.vpc_main_route_table_id
}
