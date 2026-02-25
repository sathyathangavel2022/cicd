terraform {
  required_version = ">= 1.1.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" # pick a stable version
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.0"
    }
  }

  backend "gcs" {
    bucket = "xb-ops-cbf86-terraform-state"
    prefix = "terraform-org" # folder path inside bucket
  }
}

provider "google" {
  project = var.project_id
  #region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}




module "service_accounts" {
  source   = "./modules/service_account"
  for_each = var.service_accounts

  account_id   = each.value.account_id
  display_name = each.value.display_name
  project_id   = var.project_id
}
