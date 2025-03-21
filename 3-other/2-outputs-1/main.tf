
resource "google_service_account" "mw-account" {

  # Leaving space for markup
  account_id = local.mwareAccountName
  display_name  = "Service Account for ${local.mwareComputeName}"
}

resource "google_compute_instance" "mw-server" {
  name          = local.mwareComputeName
  zone          = local.mwareComputeZone
  machine_type  = local.mwareMachineType
  labels        = local.labels
  # ...

  service_account {
    email   = google_service_account.mw-account.email
    scopes = ["default"]
  }
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
