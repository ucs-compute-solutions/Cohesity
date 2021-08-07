
resource "intersight_server_profile" "Server-Profile" {
  for_each = local.moid_to_profile_map
  name     = each.value

  //Some issue with automatic dependency resolution during destroy - Will fix it later.
  depends_on = [module.cohesity_policies]

  target_platform = "Standalone"

  policy_bucket = [
    {
      moid                  = module.cohesity_policies.bios_policy_moid
      object_type           = "bios.Policy",
      class_id              = "bios.Policy",
      additional_properties = "",
      selector              = ""
    },
    {
      moid                  = module.cohesity_policies.boot_policy_for_cohesity_moid
      object_type           = "boot.PrecisionPolicy",
      class_id              = "boot.PrecisionPolicy",
      additional_properties = "",
      selector              = ""
    },
    {
      moid                  = module.cohesity_policies.ipmi_over_lan_policy_moid
      object_type           = "ipmioverlan.Policy",
      class_id              = "ipmioverlan.Policy",
      additional_properties = "",
      selector              = ""
    },
    {
      moid                  = module.cohesity_policies.serial_over_lan_settings_moid
      object_type           = "sol.Policy",
      class_id              = "sol.Policy",
      additional_properties = "",
      selector              = ""
    },
    {
      moid                  = module.cohesity_policies.storage_policy_moid
      object_type           = "storage.StoragePolicy",
      class_id              = "storage.StoragePolicy",
      additional_properties = "",
      selector              = ""
    },
    {
      moid                  = module.cohesity_policies.vic_adapter_config_moid
      object_type           = "adapter.ConfigPolicy",
      class_id              = "adapter.ConfigPolicy",
      additional_properties = "",
      selector              = ""
  }]

  organization {
    object_type = "organization.Organization"
    moid        = module.org_details.org_moid
  }

  assigned_server = [
    {
      moid                  = each.key
      object_type           = "compute.RackUnit"
      class_id              = "compute.RackUnit"
      additional_properties = ""
      selector              = ""
  }]

}