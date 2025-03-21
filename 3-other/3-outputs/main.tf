
data "google_compute_zones" "zones" {
  region = local.mwareComputeRegion
}

resource "google_compute_instance" "mw-green" {
  for_each = data.google_compute_zones.zones.names

  name          = local.greenComputeName
  zone          = each.value
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

resource "google_compute_instance" "mw-blue" {
  for_each = data.google_compute_zones.zones.names

  name          = local.blueComputeName
  zone          = each.value
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
