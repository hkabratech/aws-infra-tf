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

data "aws_security_group" "all_sgs" {
  filter {
    name   = "vpc_id"
    values = ["vpc-0d50f41048ea19cef"]
  }
}

output "security_group_ids" {
  value = data.aws_security_group.all_sgs.ids
  
}

output "security_group_names" {
  value = data.aws_security_group.all_sgs.names 
  
}