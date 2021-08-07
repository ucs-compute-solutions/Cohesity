module "org_details" {
  source            = "./modules/org_details"
  organization_name = var.organization_name
}



data "intersight_compute_physical_summary" "data_src" {
  count  = length(var.serial_number_of_servers)
  serial = var.serial_number_of_servers[count.index]
}


locals {
  moids_of_server     = data.intersight_compute_physical_summary.data_src[*].results[0].moid
  server_profile_name = [for element in var.serial_number_of_servers : "${var.name_prefix}-${element}"]
  moid_to_profile_map = zipmap(local.moids_of_server, local.server_profile_name)
}