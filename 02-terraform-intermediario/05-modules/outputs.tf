output "name" {
  value = module.bucket.name
}

output "arn" {
  value = module.bucket.arn
}

output "bucket-website-name" {
  value = module.website.name
}

output "bucket-website-url" {
  value = module.website.website
}

output "bucket-website-arn" {
  value = module.website.arn
}

output "bucket-website-files" {
  value = module.website.files
}