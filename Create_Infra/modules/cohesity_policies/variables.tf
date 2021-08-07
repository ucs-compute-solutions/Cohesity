variable "org_moid" {
  default = "default"
}


#Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter.
variable "name_of_adapter_config_policy" {
  default = "Cohesity-Adapter-Config-Policy"
}

variable "description_of_adapter_config_policy" {
  default = "Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter for Cohesity"
}

variable "pcie_slot_of_vic_adapter" {
  default = "MLOM"
}



#BIOS Policy
variable "name_of_bios_policy" {
  default = "Cohesity-BIOS-Policy"
}

variable "description_of_bios_policy" {
  default = "BIOS Policy for Cohesity"
}



#Intelligent Platform Management Interface Over LAN Policy
variable "name_of_ipmi_over_lan_policy" {
  default = "Cohesity-IPMI-Over-LAN-Policy"
}

variable "description_of_ipmi_over_lan_policy" {
  default = "IPMI Over LAN Policy for Cohesity"
}

variable "encryption_key_for_ipmi_communication" {
  sensitive = true
  default   = "abcd"
}



#Policy for configuring Serial Over LAN settings for Cohesity
variable "name_of_serial_over_lan_policy" {
  default = "Cohesity-Serial-Over-LAN-Policy"
}

variable "description_of_serial_over_lan_policy" {
  default = "Policy for configuring Serial Over LAN settings for Cohesity"
}

variable "baud_rate" {
  default = "115200"
}

variable "com_port" {
  default = "com0"
}




#Reusable storage related configuration
variable "name_of_storage_policy" {
  default = "Cohesity-Storage-Policy"
}

variable "description_of_storage_policy" {
  default = "Storage Policy for Cohesity"
}



#Boot Order Policy for Cohesity
variable "name_of_boot_order_policy" {
  default = "Cohesity-Boot-Oder-Policy"
}

variable "description_of_boot_order_policy" {
  default = "Boot Order Policy for Cohesity"
}

variable "boot_mode" {
  default = "Uefi"
}