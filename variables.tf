variable "account_name" {
  description = "Account Name to manage the zone resource in. `Account Settings:Read` permission is required."
  type        = string
}

variable "domain" {
  description = "Cloudflare domain name to create"
  type        = string
}

variable "type" {
  description = "A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup."
  type        = string
  default     = "full"

  validation {
    condition     = contains(["full", "partial", "secondary", "internal"], var.type)
    error_message = "The zone_type must be one of the following values: \"full\", \"partial\", \"secondary\", or \"internal\"."
  }
}

variable "settings" {
  description = "Various setting_id/value pairs which customizes Cloudflare zone settings. Note that some settings are only available on certain plans."
  type        = map(any)
  default     = {}
}

# https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/bot_management
variable "bot_management" {
  description = "Cloudflare bot management configuration."
  type = object({
    auto_update_model     = optional(bool, false)
    enable_js             = optional(bool, false)
    is_robots_txt_managed = optional(bool, false)
  })
  default = {}
}
