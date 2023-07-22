#--------------------------"vpc"--------------------------------
resource "aws_vpc" "vpc" {
    cidr_block = var.vpc-cidr
    tags = {
        "Name" = var.vpc-name
    }
}
#--------------------------"Subnets"--------------------------------
resource "aws_subnet" "subnets" {
    vpc_id = aws_vpc.vpc.id
    for_each = var.subnets-cidr
    cidr_block = each.key
    availability_zone = each.value
    tags = {
        Name = var.subnet-name
    }
}
resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = var.internet-gateway-name
    }
}
#--------------------------"Route tables"--------------------------------
resource "aws_route_table" "route-table" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block  = var.cidr
        gateway_id = aws_internet_gateway.internet_gateway.id
    }
    tags = {
        Name = var.route-table-name
    }
}