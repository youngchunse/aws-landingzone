output "vpc_id" {
  value = module.app1_vpc.vpc_id
}

output "private_subnet_id" {
  value = module.app1_vpc.private_subnets
}

output "database_subnet_id" {
  value = module.app1_vpc.database_subnets
}

output "bastion_sg_id" {
  value = module.app1_vpc.bastion_security_group_id[0]
}

output "vpc2_id" {
  value = module.app2_vpc.vpc_id
}

output "private2_subnet_id" {
  value = module.app2_vpc.private_subnets
}

output "database2_subnet_id" {
  value = module.app2_vpc.database_subnets
}

output "bastion2_sg_id" {
  value = module.app2_vpc.bastion_security_group_id[0]
}
