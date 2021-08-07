
module "cohesity_policies" {
  source   = "./modules/cohesity_policies"
  org_moid = module.org_details.org_moid

  #Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter.
  name_of_adapter_config_policy        = "${var.name_prefix}-Adapter-Config-Policy"
  description_of_adapter_config_policy = "Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter for Cohesity"
  pcie_slot_of_vic_adapter             = var.pcie_slot_of_vic_adapter

  #BIOS Policy
  name_of_bios_policy        = "${var.name_prefix}-BIOS-Policy"
  description_of_bios_policy = "BIOS Policy for Cohesity"

  #Intelligent Platform Management Interface Over LAN Policy
  name_of_ipmi_over_lan_policy          = "${var.name_prefix}-IPMI-Over-LAN-Policy"
  description_of_ipmi_over_lan_policy   = "IPMI Over LAN Policy for Cohesity"
  encryption_key_for_ipmi_communication = var.encryption_key_for_ipmi_communication

  #Policy for configuring Serial Over LAN settings for Cohesity
  name_of_serial_over_lan_policy        = "${var.name_prefix}-Serial-Over-LAN-Policy"
  description_of_serial_over_lan_policy = "Policy for configuring Serial Over LAN settings for Cohesity"
  baud_rate                             = var.baud_rate
  com_port                              = var.com_port

  #Reusable storage related configuration
  name_of_storage_policy        = "${var.name_prefix}-Storage-Policy"
  description_of_storage_policy = "Storage Policy for Cohesity"

  #Boot Order Policy for Cosecity
  name_of_boot_order_policy        = "${var.name_prefix}-Boot-Oder-Policy"
  description_of_boot_order_policy = "Boot Order Policy for Cohesity"
  #Either put Uefi or Legacy
  boot_mode = var.boot_mode

}

