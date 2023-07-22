variable "vpc-name" {
  type        = string
  description = "this is the name of vpc"
  default = "vpc"
}

variable "vpc-cidr" {
  type        = string
  description = "this is the cidr of vpc"
  default = "10.0.0.0/16"
}

variable "subnet-name" {
  type = string
}

variable "subnets-cidr" {
  type        = map
  description = "those are subnets cidr "
  default = {
  "us-east-1a" = "10.0.0.0/24"
  "us-east-1a" = "10.0.1.0/24"
  "us-east-1b" = "10.0.2.0/24"
  "us-east-1b" = "10.0.3.0/24"
  }
}

variable "route-table-name" {
  type = string
}