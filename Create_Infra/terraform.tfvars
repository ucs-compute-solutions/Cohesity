#Specify the name of Intersight Organization for Cohesity Cluster
organization_name = "default"

#Provide name to be prefixed for all policies and profiles
name_prefix = "Cohesity-Test"

#Provide serial numbers for all servers whcih you would like to associate
#serial_number_of_servers = ["WZP24440A6Z", "WZP24440A75", "WZP24440A7F", "WZP24440A6V", "WZP2227005W"]
serial_number_of_servers = ["WZP24440A75", "WZP2227005W"]

#Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter.
pcie_slot_of_vic_adapter = "MLOM"

#Intelligent Platform Management Interface Over LAN Policy
encryption_key_for_ipmi_communication = "abcd"

#Policy for configuring Serial Over LAN settings for Cohesity
baud_rate = "115200"
com_port  = "com0"

#Boot Order Policy for Cohesity
#Either put Uefi or Legacy
boot_mode = "Uefi"


