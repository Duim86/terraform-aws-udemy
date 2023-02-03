locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext = "zip"

  object_name = "meu-arquivo-gerado-de-um-template"

  common_tags = {
    "Owner" = "Zanlorenzi"
    "Year"  = "2023"

  }
}