//Resource for installing Cohesity OS
resource "intersight_os_install" "os_install" {
  for_each = local.serial_to_moid_map
  name     = "OS-Install-${each.key}"

  server {
    object_type = "compute.RackUnit"
    moid        = each.value
  }

  image {
    object_type = "softwarerepository.OperatingSystemFile"
    moid        = intersight_softwarerepository_operating_system_file.add_os_image.moid
  }

  answers {
    nr_source = "Embedded"
  }

  install_method = "vMedia"

  organization {
    object_type = "organization.Organization"
    moid        = module.org_details.org_moid
  }
}