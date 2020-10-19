output "vpc_id" {
  value = module.vpc1.vpc_id
}

output "private_subnet_id" {
  value = module.vpc1.private_subnets
}

output "database_subnet_id" {
  value = module.vpc1.database_subnets
}

output "bastion_sg_id" {
  value = module.vpc1.bastion_security_group_id[0]
}

output "vpc_id" {
  value = module.vpc2.vpc_id
}

output "private_subnet_id" {
  value = module.vpc2.private_subnets
}

output "database_subnet_id" {
  value = module.vpc2.database_subnets
}

output "bastion_sg_id" {
  value = module.vpc2.bastion_security_group_id[0]
}
