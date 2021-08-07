#Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter.
output "vic_adapter_config_moid" {
  value = intersight_adapter_config_policy.vic_adapter_config.moid
}

#BIOS Policy
output "bios_policy_moid" {
  value = intersight_bios_policy.bios_policy.moid
}

#Intelligent Platform Management Interface Over LAN Policy
output "ipmi_over_lan_policy_moid" {
  value = intersight_ipmioverlan_policy.ipmi_over_lan_policy.moid
}

#Policy for configuring Serial Over LAN settings for Cohesity
output "serial_over_lan_settings_moid" {
  value = intersight_sol_policy.serial_over_lan_settings.moid
}

#Reusable storage related configuration
output "storage_policy_moid" {
  value = intersight_storage_storage_policy.storage_policy.moid
}

#Boot Order Policy for Cohesity
output "boot_policy_for_cohesity_moid" {
  value = intersight_boot_precision_policy.boot_policy_for_cohesity.moid
}



