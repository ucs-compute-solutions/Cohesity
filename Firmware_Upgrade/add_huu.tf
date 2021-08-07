
resource "intersight_firmware_distributable" "huu_image_update" {
  name = "Rack-Server"

  catalog {
    moid        = data.intersight_softwarerepository_catalog.catalog_of_software_repository.results[0].moid
    object_type = "softwarerepository.Catalog"
  }

  import_action    = "None"
  origin           = "User"
  nr_version       = "Rack-Server"
  supported_models = ["Rack-Server"]
  image_type       = "Standalone server"

  nr_source {
    additional_properties = jsonencode({
      LocationLink = var.huu_local_http_path
    })
    object_type = "softwarerepository.HttpServer"
  }

}