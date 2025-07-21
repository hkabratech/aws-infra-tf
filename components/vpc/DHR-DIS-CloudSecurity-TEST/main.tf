
#create vpc
module "vpc" {
  source               = "../../../modules/vpc"
  aws_profile          = var.aws_profile
  aws_region           = var.aws_region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

}



