
variable "siteName" {
  type        = string
  description = "Represents a website name."
  default     = ""
}

variable "siteName-default" {
  type        = string
  description = "Represents a website name."
  default     = "defaultcomcorp"
}

variable "bucketLocation" {
  type        = string
  description = "Represents the bucket location."
  default     = ""
}

variable "bucketLocation-default" {
  type        = string
  description = "Represents the bucket location."
  default     = "US"
}
