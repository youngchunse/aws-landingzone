output "vpc_id" {
  description = "The ID of the VPC"
  value = aws_vpc.main.id
}

output "public_subnets" {
  description = "The ID of the subnet"
  value = aws_subnet.public_subnet.*.id
}

output "public_subnet_ip" {
  description = "CIDR blocks of the created public subnets"
  value = aws_subnet.public_subnet.*.cidr_block
}

output "private_subnets" {
  description = "The ID of the private subnet"
  value = aws_subnet.private_subnet.*.id
}

output "private_subnet_ip" {
  description = "CIDR blocks of the created private subnets"
  value = aws_subnet.private_subnet.*.cidr_block
}

output "database_subnets" {
  description = "The ID of the database subnet"
  value = aws_subnet.database_subnet.*.id
}

output "database_subnet_ip" {
  description = "CIDR blocks of the created database subnets"

  value = aws_subnet.database_subnet.*.cidr_block
}
output "bastion_security_group_id" {
  description = "The ID of the bastion sg"
  value = aws_security_group.bastion_sg.*.id
}
