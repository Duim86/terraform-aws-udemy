variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform"
}

variable "aws_region" {
  description = "AWS region where the resources will be created"

  type = object({
    dev  = string
    prod = string
  })

  default = {
    dev  = "us-east-1"
    prod = "us-east-1"
  }
}

variable "instance" {
  description = "Instance configuration per workspace"

  type = object({
    dev = object({
      ami    = string
      type   = string
      number = number
    })
    prod = object({
      ami    = string
      type   = string
      number = number
    })
  })

  default = {
    dev = {
      ami    = "ami-0aa7d40eeae50c9a9"
      number = 1
      type   = "t3.micro"
    }
    prod = {
      ami    = "ami-0aa7d40eeae50c9a9"
      number = 3
      type   = "t2.micro"
    }
  }
}