variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "terraform"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}