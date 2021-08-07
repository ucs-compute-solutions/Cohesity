resource "intersight_server_profile" "Deploy-Server-Profile" {
  for_each = local.moid_to_profile_map
  name = each.value
  target_platform = "Standalone"

  action = var.action

  organization {
    object_type = "organization.Organization"
    moid = module.org_details.org_moid
  }
}