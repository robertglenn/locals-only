
locals {
  mwareComputeName  = "compute-${var.siteName}"
  mwareComputeZone  = "us-central1-a"
  mwareMachineType  = "e2-medium"
  labels            = {
    appName = "${var.siteName}-app"
  }
}

resource "google_compute_instance" "middleware-server" {
  name          = local.mwareComputeName
  zone          = local.mwareComputeZone
  machine_type  = local.mwareMachineType
  labels        = local.labels
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
