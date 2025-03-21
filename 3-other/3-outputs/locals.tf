
locals {
  # IPs for the compute instances, merged together
  instance_ips = concat(
    google_compute_instance.mw-green.*.network_interface.0.network_ip,
    google_compute_instance.mw-blue.*.network_interface.0.network_ip
  )
  
  greenComputeName    = "green-${var.siteName}"
  blueComputeName     = "blue-${var.siteName}"
  mwareComputeRegion  = "us-central1"
  mwareMachineType    = "e2-medium"
}
