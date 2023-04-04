variable "config" {
  description = "Application insights configuration"
  default     = null
}

variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}