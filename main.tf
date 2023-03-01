module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = [local.vpc_azs]
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  
  enable_dns_hostnames   = true
  enable_ipv6            = true
  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false
  enable_vpn_gateway     = false

  vpc_tags = local.tags
}