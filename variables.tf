variable "vpc_name" {
  description = "Name of the VPC. Must be unique."
  type        = string
}

variable "cidr" {
  description = "The VPC CIDR range"
  type        = string
}

variable "azs" {
  description = "The list of azs"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets "
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Public subnets "
  type        = map(string)
}

variable "public_subnet_tags" {
  description = "Public subnets "
  type        = map(string)
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}

variable "enable_nat_gateway" {
    default = false
}

variable "enable_vpn_gateway" {
    default = false
}

variable "enable_dns_hostnames" {
    default = true
}

variable "nat_instance_ami" {
    type = string
}

variable "nat_instance_type" {
    type = string
}



