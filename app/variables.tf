variable "region" {
  type = string
}

variable "localip" {
  type = list(string)
}

variable "vpc_1" {
  type = map(any)
}

variable "vpc_2" {
  type = map(any)
}

variable "bastion_instance_defaults" {
  type = map(any)
}
