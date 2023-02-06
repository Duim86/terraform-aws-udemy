terraform {
  required_version = "1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12213321321313100999088"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "my-test-bucket-acl" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}