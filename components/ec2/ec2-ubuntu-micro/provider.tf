terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0"
      #version = "4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "hk-terrafrom-2112025"
    key    = "us-east-1/ec2/ec2-ubuntu-micro/terraform.tfstate"
    region = "us-east-1"
  }
}



