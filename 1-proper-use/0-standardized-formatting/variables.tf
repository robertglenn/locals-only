
variable "site" {
  type        = string
  description = "Represents a website name."
}

variable "unit" {
  type        = string
  description = "Business Unit for the resources."
}

variable "locale" {
  type        = string
  description = "Locale where the resource is hosted."
}

variable "cost_code" {
  type        = string
  description = "Cost recovery code of the Business Unit."
}

variable "product_owner" {
  type        = string
  description = "Product owner for the resources."
}
