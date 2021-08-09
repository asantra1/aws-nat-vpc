module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.vpc_name}"
  cidr = "${var.cidr}"

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway   = false
  enable_vpn_gateway   = false
  enable_dns_hostnames = true

  # Add the public subnet tags in order to create the inetetnet facing ALB created automatically 
  # by AWS Load Balancer Controller
  public_subnet_tags = var.public_subnet_tags

  private_subnet_tags = var.private_subnet_tags

  tags = var.tags
}