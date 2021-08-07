data "intersight_iam_account" "account_details" {
}



data "intersight_softwarerepository_catalog" "catalog_of_software_repository" {
  account_moid = data.intersight_iam_account.account_details.moid
}


data "intersight_compute_physical_summary" "data_src" {
  count  = length(var.serial_number_of_servers)
  serial = var.serial_number_of_servers[count.index]
}


module "org_details" {
  source            = "./modules/org_details"
  organization_name = var.organization_name
}



locals {
  moids_of_server    = data.intersight_compute_physical_summary.data_src[*].results[0].moid
  serial_to_moid_map = zipmap(var.serial_number_of_servers, local.moids_of_server)
}


