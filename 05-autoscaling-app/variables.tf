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

variable "aws_account_id" {
  type        = number
  description = ""
  default     = 406130605113
}

variable "service_name" {
  type        = string
  description = ""
  default     = "autoscaling-app"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "instance_key_name" {
  type        = string
  description = ""
  default     = "terraform-kp"
}

