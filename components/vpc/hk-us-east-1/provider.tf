# store the terraform state file in s3
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "hk-terrafrom-2112025"
    key    = "us-east-1/infra/vpc/vpc-dev.tfstate"
    region = "us-east-1"

  }
}

