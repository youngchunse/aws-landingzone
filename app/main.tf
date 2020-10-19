provider "aws" {
  region = var.region
}
module "app1_vpc" {
  source                  = "../network"
  localip                 = var.localip
  vpc_cidr                = var.vpc_1["vpc_cidr"]
  enable_dns_support      = var.vpc_1["vpc_dns_support"]
  enable_dns_hostnames    = var.vpc_1["vpc_dns_hostnames"]
  public_subnet_cidr      = var.vpc_1["public_subnet_cidr"]
  private_subnet_cidr     = var.vpc_1["private_subnet_cidr"]
  database_subnet_cidr    = var.vpc_1["database_subnet_cidr"]
  map_public_ip_on_launch = var.vpc_1["map_public_ip_on_launch"]
  state                   = var.vpc_1["state"]
  tags                    = var.vpc_1["tags"]
}

module "app2_vpc" {
  source                  = "../network"
  localip                 = var.localip
  vpc_cidr                = var.vpc_2["vpc_cidr"]
  enable_dns_support      = var.vpc_2["vpc_dns_support"]
  enable_dns_hostnames    = var.vpc_2["vpc_dns_hostnames"]
  public_subnet_cidr      = var.vpc_2["public_subnet_cidr"]
  private_subnet_cidr     = var.vpc_2["private_subnet_cidr"]
  database_subnet_cidr    = var.vpc_2["database_subnet_cidr"]
  map_public_ip_on_launch = var.vpc_2["map_public_ip_on_launch"]
  state                   = var.vpc_2["state"]
  tags                    = var.vpc_2["tags"]
}

module "egress_vpc" {
  source                  = "../network"
  localip                 = var.localip
  enable_nat_gateway      = var.egress_vpc["enable_nat_gateway"]
  create_igw              = var.egress_vpc["create_igw"]
  vpc_cidr                = var.egress_vpc["vpc_cidr"]
  enable_dns_support      = var.egress_vpc["vpc_dns_support"]
  enable_dns_hostnames    = var.egress_vpc["vpc_dns_hostnames"]
  public_subnet_cidr      = var.egress_vpc["public_subnet_cidr"]
  private_subnet_cidr     = var.egress_vpc["private_subnet_cidr"]
  database_subnet_cidr    = var.egress_vpc["database_subnet_cidr"]
  map_public_ip_on_launch = var.egress_vpc["map_public_ip_on_launch"]
  state                   = var.egress_vpc["state"]
  tags                    = var.egress_vpc["tags"]
}


#module "ec2" {
#  source                      = "../ec2"
#  public_key                  = var.public_key
#  key_name                    = var.key_name
#  instance_count              = var.bastion_instance_defaults["instance_count"]
#  ami                         = var.bastion_instance_defaults["ami"]
#  instance_type               = var.bastion_instance_defaults["instance_type"]
#  user_data                   = var.bastion_instance_defaults["user_data"]
#  subnet_id                   = module.network.public_subnets
#  monitoring                  = var.bastion_instance_defaults["monitoring"]
#  vpc_security_group_ids      = module.network.bastion_security_group_id
#  iam_instance_profile        = var.bastion_instance_defaults["iam_instance_profile"]
#  associate_public_ip_address = var.bastion_instance_defaults["associate_public_ip_address"]
#  ebs_optimized               = var.bastion_instance_defaults["ebs_optimized"]
#  tags                        = var.tags
#}
