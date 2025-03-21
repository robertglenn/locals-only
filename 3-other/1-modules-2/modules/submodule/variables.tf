
variable "site" {
  type        = string
  description = "Represents a website name."
}

variable "bucketLabels" {
  type        = map(string)
  description = "Labels for bucket resource instances."
  default     = {}
}

variable "bucketLocation" {
  type        = string
  description = "Where the bucket gets created."
  default     = "US"
}
