variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}
variable "service_accounts" {
  description = "Map of service accounts to create"
  type = map(object({
    account_id   = string
    display_name = string
  }))
}
