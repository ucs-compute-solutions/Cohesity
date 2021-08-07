variable "organization_name" {
  default = "default"
}

variable "name_prefix" {
  default = "Cohesity"
}


variable "serial_number_of_servers" {
}


#Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter.
variable "pcie_slot_of_vic_adapter" {
  default = "MLOM"
}


#Intelligent Platform Management Interface Over LAN Policy
variable "encryption_key_for_ipmi_communication" {
  sensitive = true
  default   = "abcd"
}


#Policy for configuring Serial Over LAN settings for Cohesity
variable "baud_rate" {
  default = "115200"
}

variable "com_port" {
  default = "com0"
}


#Boot Order Policy for Cohesity
variable "boot_mode" {
  default = "Uefi"
}