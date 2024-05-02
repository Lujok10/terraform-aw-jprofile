module "vpc" {
  source = "terraform-aws-module/vpc/aws"
  name = var.VPC_NAME
  cidr = var.VpcCIDR
  azs                 = [var.Zone1, var.Zone2, var.Zone3]
  private_subnets     = [var.PrivSub1CIDR, var.PrivSub2CIDR, var.PrivSub3CIDR]
  public_subnets      = [var.PrivSub3CIDR, var.PubSub2CIDR, var.PubSub3CIDR]

  enable_net_gateway   = true
  single_net_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags  = {
    Terraform = "true"
    Environment = "Prod"
  }
  vpc_tags = {
    Name = var.VPC_NAME
  }


}