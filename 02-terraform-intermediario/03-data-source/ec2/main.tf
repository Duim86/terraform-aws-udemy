terraform {
  required_version = "1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-406130605113"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform"

  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}