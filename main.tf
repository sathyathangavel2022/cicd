module "service_accounts" {
  source     = "./modules/service_account"
  for_each   = var.service_accounts

  account_id   = each.value.account_id
  display_name = each.value.display_name
  project_id   = var.project_id
}
