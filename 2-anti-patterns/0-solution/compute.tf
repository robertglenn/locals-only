
resource "google_compute_instance" "middleware-server" {
  name          = local.mwareComputeName
  zone          = local.mwareComputeZone
  machine_type  = local.mwareMachineType
  # ...
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
