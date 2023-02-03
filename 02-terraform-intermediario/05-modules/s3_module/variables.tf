variable "name" {
  type        = string
  description = "Bucket name"
}

variable "acl" {
  type        = string
  description = ""
  default     = "private"
}

variable "policy" {
  type        = string
  description = "value"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}

variable "website" {
  type        = map(string)
  description = "Map containing website configuration"
  default     = {}

}

variable "versioning" {
  type        = map(string)
  description = "Map containing versioning configuration"
  default     = {}

}

variable "key_prefix" {
  type        = string
  description = ""
  default     = ""

}

variable "files" {
  type        = string
  description = ""
  default     = ""

}