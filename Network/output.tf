output "vpc-id" {
  value = aws_vpc.vpc.id
}

output "subnets-id" {
    value = values(aws_subnet.subnets)[*].id
}

output "route-table-id" {
  value = aws_route_table.route-table.id
}