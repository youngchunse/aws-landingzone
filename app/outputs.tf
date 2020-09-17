output "vpc_id" {
  value = module.network.vpc_id
}

output "private_subnet_id" {
  value = module.network.private_subnets
}

output "database_subnet_id" {
  value = module.network.database_subnets
}


output "bastion_sg_id" {
  value = module.network.bastion_security_group_id[0]
}
