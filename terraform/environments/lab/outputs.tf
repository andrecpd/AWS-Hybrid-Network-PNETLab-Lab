output "vpc_id" {
  description = "ID of the lab VPC."
  value       = aws_vpc.lab.id
}

output "vpc_cidr" {
  description = "CIDR of the lab VPC."
  value       = aws_vpc.lab.cidr_block
}

output "private_subnet_id" {
  description = "ID of the private services subnet."
  value       = aws_subnet.private_services.id
}

output "private_subnet_cidr" {
  description = "CIDR of the private services subnet."
  value       = aws_subnet.private_services.cidr_block
}

output "private_route_table_id" {
  description = "ID of the private route table."
  value       = aws_route_table.private.id
}
