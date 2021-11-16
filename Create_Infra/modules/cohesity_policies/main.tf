#Adapter Configuration Policy to configure the Ethernet and Fibre-Channel settings for the VIC adapter.
resource "intersight_adapter_config_policy" "vic_adapter_config" {
  name        = var.name_of_adapter_config_policy
  description = var.description_of_adapter_config_policy

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }

  settings = [
    {
      slot_id               = var.pcie_slot_of_vic_adapter,
      object_type           = "adapter.AdapterConfig",
      class_id              = "adapter.AdapterConfig",
      additional_properties = "",

      dce_interface_settings = [
        {
          interface_id          = 0,
          fec_mode              = "cl91",
          object_type           = "adapter.DceInterfaceSettings",
          class_id              = "adapter.DceInterfaceSettings",
          additional_properties = ""
        },

        {
          interface_id          = 1,
          fec_mode              = "cl91",
          object_type           = "adapter.DceInterfaceSettings",
          class_id              = "adapter.DceInterfaceSettings",
          additional_properties = ""
        },

        {
          interface_id          = 2,
          fec_mode              = "cl91",
          object_type           = "adapter.DceInterfaceSettings",
          class_id              = "adapter.DceInterfaceSettings",
          additional_properties = ""
        },

        {
          interface_id          = 3,
          fec_mode              = "cl91",
          object_type           = "adapter.DceInterfaceSettings",
          class_id              = "adapter.DceInterfaceSettings",
          additional_properties = ""

      }],

      eth_settings = [{
        lldp_enabled          = true
        object_type           = "adapter.EthSettings"
        class_id              = "adapter.EthSettings"
        additional_properties = ""

      }],

      fc_settings = [{
        object_type           = "adapter.FcSettings"
        fip_enabled           = true
        additional_properties = ""
        class_id              = "adapter.FcSettings"
      }],

      port_channel_settings = [{
        enabled               = false
        object_type           = "adapter.PortChannelSettings"
        class_id              = "adapter.PortChannelSettings"
        additional_properties = ""
      }]
    }
  ]
}


#BIOS Policy
resource "intersight_bios_policy" "bios_policy" {
  name        = var.name_of_bios_policy
  description = var.description_of_bios_policy

  acs_control_gpu1state                 = "platform-default"
  acs_control_gpu2state                 = "platform-default"
  acs_control_gpu3state                 = "platform-default"
  acs_control_gpu4state                 = "platform-default"
  acs_control_gpu5state                 = "platform-default"
  acs_control_gpu6state                 = "platform-default"
  acs_control_gpu7state                 = "platform-default"
  acs_control_gpu8state                 = "platform-default"
  acs_control_slot11state               = "platform-default"
  acs_control_slot12state               = "platform-default"
  acs_control_slot13state               = "platform-default"
  acs_control_slot14state               = "platform-default"
  cdn_support                           = "platform-default"
  lom_port0state                        = "platform-default"
  lom_port1state                        = "platform-default"
  lom_port2state                        = "platform-default"
  lom_port3state                        = "platform-default"
  lom_ports_all_state                   = "platform-default"
  pci_option_ro_ms                      = "platform-default"
  pci_rom_clp                           = "platform-default"
  slot10link_speed                      = "platform-default"
  slot10state                           = "platform-default"
  slot11link_speed                      = "platform-default"
  slot11state                           = "platform-default"
  slot12link_speed                      = "platform-default"
  slot12state                           = "platform-default"
  slot13state                           = "platform-default"
  slot14state                           = "platform-default"
  slot1link_speed                       = "platform-default"
  slot1state                            = "platform-default"
  slot2link_speed                       = "platform-default"
  slot2state                            = "platform-default"
  slot3link_speed                       = "platform-default"
  slot3state                            = "platform-default"
  slot4link_speed                       = "platform-default"
  slot4state                            = "platform-default"
  slot5link_speed                       = "platform-default"
  slot5state                            = "platform-default"
  slot6link_speed                       = "platform-default"
  slot6state                            = "platform-default"
  slot7link_speed                       = "platform-default"
  slot7state                            = "platform-default"
  slot8link_speed                       = "platform-default"
  slot8state                            = "platform-default"
  slot9link_speed                       = "platform-default"
  slot9state                            = "platform-default"
  slot_flom_link_speed                  = "platform-default"
  slot_front_nvme1link_speed            = "platform-default"
  slot_front_nvme2link_speed            = "platform-default"
  slot_front_slot5link_speed            = "platform-default"
  slot_front_slot6link_speed            = "platform-default"
  slot_gpu1state                        = "platform-default"
  slot_gpu2state                        = "platform-default"
  slot_gpu3state                        = "platform-default"
  slot_gpu4state                        = "platform-default"
  slot_gpu5state                        = "platform-default"
  slot_gpu6state                        = "platform-default"
  slot_gpu7state                        = "platform-default"
  slot_gpu8state                        = "platform-default"
  slot_hba_link_speed                   = "platform-default"
  slot_hba_state                        = "platform-default"
  slot_lom1link                         = "platform-default"
  slot_lom2link                         = "platform-default"
  slot_mezz_state                       = "platform-default"
  slot_mlom_link_speed                  = "platform-default"
  slot_mlom_state                       = "platform-default"
  slot_mraid_link_speed                 = "platform-default"
  slot_mraid_state                      = "platform-default"
  slot_n10state                         = "platform-default"
  slot_n11state                         = "platform-default"
  slot_n12state                         = "platform-default"
  slot_n13state                         = "platform-default"
  slot_n14state                         = "platform-default"
  slot_n15state                         = "platform-default"
  slot_n16state                         = "platform-default"
  slot_n17state                         = "platform-default"
  slot_n18state                         = "platform-default"
  slot_n19state                         = "platform-default"
  slot_n1state                          = "platform-default"
  slot_n20state                         = "platform-default"
  slot_n21state                         = "platform-default"
  slot_n22state                         = "platform-default"
  slot_n23state                         = "platform-default"
  slot_n24state                         = "platform-default"
  slot_n2state                          = "platform-default"
  slot_n3state                          = "platform-default"
  slot_n4state                          = "platform-default"
  slot_n5state                          = "platform-default"
  slot_n6state                          = "platform-default"
  slot_n7state                          = "platform-default"
  slot_n8state                          = "platform-default"
  slot_n9state                          = "platform-default"
  slot_raid_link_speed                  = "platform-default"
  slot_raid_state                       = "platform-default"
  slot_rear_nvme1link_speed             = "platform-default"
  slot_rear_nvme1state                  = "platform-default"
  slot_rear_nvme2link_speed             = "platform-default"
  slot_rear_nvme2state                  = "platform-default"
  slot_rear_nvme3state                  = "platform-default"
  slot_rear_nvme4state                  = "platform-default"
  slot_rear_nvme5state                  = "platform-default"
  slot_rear_nvme6state                  = "platform-default"
  slot_rear_nvme7state                  = "platform-default"
  slot_rear_nvme8state                  = "platform-default"
  slot_riser1link_speed                 = "platform-default"
  slot_riser1slot1link_speed            = "platform-default"
  slot_riser1slot2link_speed            = "platform-default"
  slot_riser1slot3link_speed            = "platform-default"
  slot_riser2link_speed                 = "platform-default"
  slot_riser2slot4link_speed            = "platform-default"
  slot_riser2slot5link_speed            = "platform-default"
  slot_riser2slot6link_speed            = "platform-default"
  slot_sas_state                        = "platform-default"
  slot_ssd_slot1link_speed              = "platform-default"
  slot_ssd_slot2link_speed              = "platform-default"
  adjacent_cache_line_prefetch          = "platform-default"
  altitude                              = "platform-default"
  auto_cc_state                         = "platform-default"
  autonumous_cstate_enable              = "platform-default"
  boot_performance_mode                 = "platform-default"
  cbs_cmn_cpu_gen_downcore_ctrl         = "platform-default"
  channel_inter_leave                   = "platform-default"
  closed_loop_therm_throtl              = "platform-default"
  cmci_enable                           = "platform-default"
  config_tdp                            = "platform-default"
  core_multi_processing                 = "platform-default"
  cpu_energy_performance                = "balanced-energy"
  cpu_frequency_floor                   = "platform-default"
  cpu_performance                       = "platform-default"
  cpu_power_management                  = "platform-default"
  demand_scrub                          = "platform-default"
  direct_cache_access                   = "platform-default"
  dram_clock_throttling                 = "platform-default"
  energy_efficient_turbo                = "disabled"
  eng_perf_tuning                       = "platform-default"
  enhanced_intel_speed_step_tech        = "platform-default"
  epp_profile                           = "Performance"
  epp_enable                            = "enabled"
  execute_disable_bit                   = "platform-default"
  extended_apic                         = "platform-default"
  hardware_prefetch                     = "platform-default"
  hwpm_enable                           = "platform-default"
  imc_interleave                        = "platform-default"
  intel_hyper_threading_tech            = "platform-default"
  intel_speed_select                    = "platform-default"
  intel_turbo_boost_tech                = "platform-default"
  intel_virtualization_technology       = "platform-default"
  ioh_error_enable                      = "platform-default"
  ip_prefetch                           = "platform-default"
  kti_prefetch                          = "platform-default"
  llc_prefetch                          = "platform-default"
  memory_inter_leave                    = "platform-default"
  package_cstate_limit                  = "C0 C1 State"
  patrol_scrub                          = "platform-default"
  patrol_scrub_duration                 = "platform-default"
  pc_ie_ssd_hot_plug_support            = "platform-default"
  processor_c1e                         = "platform-default"
  processor_c3report                    = "platform-default"
  processor_c6report                    = "platform-default"
  processor_cstate                      = "platform-default"
  pstate_coord_type                     = "platform-default"
  pwr_perf_tuning                       = "os"
  rank_inter_leave                      = "platform-default"
  single_pctl_enable                    = "platform-default"
  smt_mode                              = "platform-default"
  snc                                   = "platform-default"
  streamer_prefetch                     = "platform-default"
  svm_mode                              = "platform-default"
  work_load_config                      = "I/O Sensitive"
  xpt_prefetch                          = "platform-default"
  all_usb_devices                       = "platform-default"
  legacy_usb_support                    = "platform-default"
  make_device_non_bootable              = "platform-default"
  pch_usb30mode                         = "platform-default"
  usb_emul6064                          = "platform-default"
  usb_port_front                        = "platform-default"
  usb_port_internal                     = "platform-default"
  usb_port_kvm                          = "platform-default"
  usb_port_rear                         = "platform-default"
  usb_port_sd_card                      = "platform-default"
  usb_port_vmedia                       = "platform-default"
  usb_xhci_support                      = "platform-default"
  aspm_support                          = "platform-default"
  ioh_resource                          = "platform-default"
  memory_mapped_io_above4gb             = "platform-default"
  mmcfg_base                            = "platform-default"
  onboard10gbit_lom                     = "platform-default"
  onboard_gbit_lom                      = "platform-default"
  sr_iov                                = "platform-default"
  vga_priority                          = "platform-default"
  assert_nmi_on_perr                    = "platform-default"
  assert_nmi_on_serr                    = "platform-default"
  baud_rate                             = "platform-default"
  cdn_enable                            = "platform-default"
  cisco_adaptive_mem_training           = "platform-default"
  cisco_debug_level                     = "platform-default"
  cisco_oprom_launch_optimization       = "platform-default"
  console_redirection                   = "platform-default"
  flow_control                          = "platform-default"
  frb2enable                            = "platform-default"
  legacy_os_redirection                 = "platform-default"
  os_boot_watchdog_timer                = "platform-default"
  os_boot_watchdog_timer_policy         = "platform-default"
  os_boot_watchdog_timer_timeout        = "platform-default"
  out_of_band_mgmt_port                 = "platform-default"
  putty_key_pad                         = "platform-default"
  redirection_after_post                = "platform-default"
  terminal_type                         = "platform-default"
  ucsm_boot_order_rule                  = "platform-default"
  bme_dma_mitigation                    = "platform-default"
  cbs_cmn_gnb_nb_iommu                  = "platform-default"
  cbs_cmn_mem_ctrl_bank_group_swap_ddr4 = "platform-default"
  cbs_cmn_mem_map_bank_interleave_ddr4  = "platform-default"
  cbs_df_cmn_mem_intlv                  = "platform-default"
  cbs_df_cmn_mem_intlv_size             = "platform-default"
  dcpmm_firmware_downgrade              = "platform-default"
  smee                                  = "platform-default"
  boot_option_num_retry                 = "platform-default"
  boot_option_re_cool_down              = "platform-default"
  boot_option_retry                     = "platform-default"
  ipv6pxe                               = "platform-default"
  onboard_scu_storage_support           = "platform-default"
  onboard_scu_storage_sw_stack          = "platform-default"
  pop_support                           = "platform-default"
  psata                                 = "platform-default"
  sata_mode_select                      = "platform-default"
  vmd_enable                            = "platform-default"
  cbs_cmn_cpu_cpb                       = "platform-default"
  cbs_cmn_cpu_global_cstate_ctrl        = "platform-default"
  cbs_cmn_cpu_l1stream_hw_prefetcher    = "platform-default"
  cbs_cmn_cpu_l2stream_hw_prefetcher    = "platform-default"
  cbs_cmn_determinism_slider            = "platform-default"
  cbs_cmnc_tdp_ctl                      = "platform-default"
  cke_low_policy                        = "platform-default"
  dram_refresh_rate                     = "platform-default"
  lv_ddr_mode                           = "platform-default"
  mirroring_mode                        = "platform-default"
  numa_optimized                        = "platform-default"
  select_memory_ras_configuration       = "platform-default"
  sparing_mode                          = "platform-default"
  intel_vt_for_directed_io              = "platform-default"
  intel_vtd_coherency_support           = "platform-default"
  intel_vtd_interrupt_remapping         = "platform-default"
  intel_vtd_pass_through_dma_support    = "platform-default"
  intel_vtdats_support                  = "platform-default"
  post_error_pause                      = "platform-default"
  tpm_support                           = "platform-default"
  qpi_link_frequency                    = "platform-default"
  qpi_snoop_mode                        = "platform-default"
  serial_port_aenable                   = "enabled"
  tpm_control                           = "platform-default"
  txt_support                           = "platform-default"
  nvmdimm_perform_config                = "platform-default"

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
}


#Intelligent Platform Management Interface Over LAN Policy
resource "intersight_ipmioverlan_policy" "ipmi_over_lan_policy" {
  name           = var.name_of_ipmi_over_lan_policy
  description    = var.description_of_ipmi_over_lan_policy
  enabled        = true
  privilege      = "admin"
  encryption_key = var.encryption_key_for_ipmi_communication

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }

  lifecycle {
    ignore_changes = [encryption_key]
  }
}


#Policy for configuring Serial Over LAN settings for Cohesity
resource "intersight_sol_policy" "serial_over_lan_settings" {
  name        = var.name_of_serial_over_lan_policy
  description = var.description_of_serial_over_lan_policy
  enabled     = true
  baud_rate   = var.baud_rate
  com_port    = var.com_port
  ssh_port    = 2400

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
}


#Reusable storage related configuration
resource "intersight_storage_storage_policy" "storage_policy" {
  name                         = var.name_of_storage_policy
  description                  = var.description_of_storage_policy
  #retain_policy_virtual_drives = true
  unused_disks_state           = "Jbod"
  #virtual_drives               = []
  #global_hot_spares            = []

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
}


#Boot Order Policy for Cohesity
resource "intersight_boot_precision_policy" "boot_policy_for_cohesity" {
  name        = var.name_of_boot_order_policy
  description = var.description_of_boot_order_policy

  configured_boot_mode = var.boot_mode

  boot_devices = [{ enabled = true, class_id = "boot.LocalDisk", name = "m2-1", object_type = "boot.LocalDisk", slot = "MSTOR-RAID", additional_properties =jsonencode({slot="MSTOR-RAID"})},
                  { enabled = true, class_id = "boot.LocalDisk", name = "m2-2", object_type = "boot.LocalDisk", slot = "MSTOR-RAID", additional_properties =jsonencode({slot="MSTOR-RAID"})},
                  { enabled = true, class_id = "boot.VirtualMedia", name = "vmedia-1", object_type = "boot.VirtualMedia", additional_properties = "" }]

  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
}


