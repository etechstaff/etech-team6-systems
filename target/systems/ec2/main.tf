terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "server" {
  source = "https://github.com/etechstaff/etech-team6-base-iac/tree/main//modules/ec2"
  num    = 5
}
