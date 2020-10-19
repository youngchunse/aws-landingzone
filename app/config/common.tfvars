localip                 = ["73.126.78.8/32"]

vpc_1 = {
  vpc_cidr                = "10.0.0.0/16"
  vpc_dns_support         = true
  vpc_dns_hostnames       = true
  public_subnet_cidr      = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr     = ["10.0.11.0/24", "10.0.12.0/24"]
  database_subnet_cidr    = ["10.0.21.0/24"]
  map_public_ip_on_launch = true
  state                   = "available"
}

vpc_2 = {
  vpc_cidr                = "10.20.0.0/16"
  vpc_dns_support         = true
  vpc_dns_hostnames       = true
  public_subnet_cidr      = ["10.20.1.0/24", "10.20.2.0/24"]
  private_subnet_cidr     = ["10.20.11.0/24", "10.20.12.0/24"]
  database_subnet_cidr    = ["10.20.21.0/24"]
  map_public_ip_on_launch = true
  state                   = "available"
}
