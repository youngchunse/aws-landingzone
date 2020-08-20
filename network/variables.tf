variable "localip" {
  type = list(string)
}

variable "vpc_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}
variable "enable_dns_support" {
  type = bool
}

variable "state" {
  type = string
}

variable "public_subnet_cidr" {
  type = list(string)
}

variable "private_subnet_cidr" {
  type = list(string)
}

variable "map_public_ip_on_launch" {
  type = bool
}

variable "tags" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "lb_name" {
  type    = string
  default = "a46ef60f86e9a4fbbad3cdea91ca71ef"
}
