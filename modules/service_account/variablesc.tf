variable "account_id" {
  description = "The ID of the service account (used as the email prefix)"
  type        = string
}

variable "display_name" {
  description = "A friendly display name for the service account"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID where the service account will be created"
  type        = string
}