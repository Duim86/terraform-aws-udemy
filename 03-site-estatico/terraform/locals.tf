locals {
  has_domain = var.domain != ""
  domain     = local.has_domain ? var.domain : random_pet.website.id

  common_tags = {
    Project   = "Curso AWS com Terraform"
    Service   = "Static Website"
    CreatedAt = "2022-02-04"
    Module    = "3"
  }
}