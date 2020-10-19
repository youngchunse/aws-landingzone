localip                 = ["73.126.78.8/32"]

vpc_1 = {
  vpc_cidr                = "10.0.0.0/16"
#  vpc_dns_support         = true
#  vpc_dns_hostnames       = true
#  public_subnet_cidr      = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr     = ["10.0.1.0/24", "10.0.2.0/24"]
#  database_subnet_cidr    = ["10.0.21.0/24"]
#  map_public_ip_on_launch = true
  state                   = "available"
}

vpc_2 = {
  vpc_cidr                = "10.1.0.0/16"
#  vpc_dns_support         = true
#  vpc_dns_hostnames       = true
#  public_subnet_cidr      = ["10.20.1.0/24", "10.20.2.0/24"]
  private_subnet_cidr     = ["10.1.1.0/24", "10.1.2.0/24"]
#  database_subnet_cidr    = ["10.20.21.0/24"]
#  map_public_ip_on_launch = true
  state                   = "available"
}
egress_vpc = {
  vpc_cidr            = "192.168.0.0/16"
  public_subnet_cidr  = ["192.168.1.0/24", "192.168.2.0/24"]
  private_subnet_cidr = ["192.168.11.0/24", "192.168.12.0/24"]
  enable_nat_gateway  = true
  create_igw          = true
  map_public_ip_on_launch = true
  state                   = "available"
}
