terraform {
  required_version = "1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }

  backend "s3" {
    bucket         = "tfstate-406130605113"
    key            = "06-workspaces/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform"
    dynamodb_table = "tflock-tfstate-406130605113"

  }
}

provider "aws" {
  region  = lookup(var.aws_region, local.env)
  profile = var.aws_profile
}

locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web" {
  count = lookup(var.instance, local.env)["number"]

  ami = lookup(var.instance, local.env)["ami"]

  instance_type = lookup(var.instance, local.env)["type"]

  tags = {
    Name = "minha máquina web ${local.env}"
    Env  = local.env
  }
}