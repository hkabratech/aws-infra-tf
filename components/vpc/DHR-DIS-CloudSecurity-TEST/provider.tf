# store the terraform state file in s3
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "hk-aws-tf-st"
    key    = "us-east-1/vpc/vpc-dev.tfstate"
    region = "us-east-1"
    # bucket = var.backend_bucket_name
    # key    = var.backend_bucket_key
    # region = var.aws_region

  }
}

