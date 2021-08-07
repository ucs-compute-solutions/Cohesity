//Operating system image repository details
resource "intersight_softwarerepository_operating_system_file" "add_os_image" {
  name       = var.name_for_os_image
  vendor     = var.operating_system_vendor
  nr_version = var.operating_system_version

  nr_source {
    additional_properties = jsonencode({
      LocationLink = var.http_path
    })
    object_type = "softwarerepository.HttpServer"
  }

  catalog {
    moid = data.intersight_softwarerepository_catalog.catalog_of_software_repository.results[0].moid
  }
}
