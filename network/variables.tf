variable "state" {
  type = string
}

variable "create_vpc" {
  description = "Controls if VPC should be created"
  type        = bool
  default     = true
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = ""
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = false
}
variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "create_igw" {
  description = "Controls if IGW should be created"
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "Controls if Nat Gateways should be created"
  type        = bool
  default     = true
}

variable "public_subnet_cidr" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "private_subnet_cidr" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "database_subnet_cidr" {
  description = "A list of database subnets"
  type        = list(string)
  default     = []
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
  type        = bool
  default     = true
}

variable "tags" {
  type = string
}

variable "cluster_name" {
  type    = string
  default = ""
}

variable "localip" {
  type = list(string)
}
