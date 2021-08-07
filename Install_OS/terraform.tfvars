#Specify the name of Intersight Organization for Cohesity Cluster
organization_name = "default"

//Operating system image repository details
name_for_os_image        = "Cohesity-OS-Image"
operating_system_vendor  = "CentOS"
operating_system_version = "CentOS 7.9"
http_path                = "http://10.29.149.95//cohesity-6.6.0a_release-20210209_d747dfca-centos.iso"

#Provide serial numbers for all servers where you would like install OS.
#Make sure they are associated with Server profiles first!
#serial_number_of_servers = ["WZP24440A6Z", "WZP24440A75", "WZP24440A7F", "WZP24440A6V", "WZP2227005W"]
serial_number_of_servers = ["WZP24440A75", "WZP2227005W"]