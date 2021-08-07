
resource "intersight_firmware_upgrade" "firmware_upgrade_cohesity_nodes" {
  for_each = local.serial_to_moid_map

  distributable {
    moid = intersight_firmware_distributable.huu_image_update.moid
  }

  server {
    object_type = "compute.RackUnit"
    moid        = each.value
  }

  upgrade_type = "network_upgrade"


  network_share {
    upgradeoption = "nw_upgrade_mount_only"
    map_type      = "www"
  }
}



