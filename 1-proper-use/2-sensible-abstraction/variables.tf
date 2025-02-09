
variable "siteNames" {
  type        = list(string)
  description = "Represents a website name."
}

variable "business_unit" {
  type        = string
  description = "Business Unit for the resources."
}

variable "cost_code" {
  type        = string
  description = "Cost recovery code of the Business Unit."
}

variable "product_owner" {
  type        = string
  description = "Product owner for the resources."
}
