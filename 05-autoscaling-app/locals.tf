locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "Curso AWS com Terraform"
    Service   = "Auto Scaling App"
    CreatedAt = "2022-02-04"
    Owner     = "Zanlorenzi"
    ManagedBy = "Terraform"
    Module    = "3"
  }
}