terraform {
  required_version = "1.3.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

resource "null_resource" "null" {

  triggers = {
    timestamp = timestamp()
  }

  provisioner "local-exec" {
    command = "echo Hello World!!!!"
  }

  provisioner "local-exec" {

    command = "echo %FOO% >> env_vars.txt"
    environment = {
      FOO = "bar"
      BAR = 1
      BAZ = "true"
    }    
  }
}