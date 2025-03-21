
locals {
  mwareComputeName = "compute-${var.siteName}"
  mwareComputeZone = "us-central1-a"
  mwareMachineType = "e2-medium"
  mwareAccountName = "gsa-${var.siteName}-default"
  labels           = {
    appName   = "${var.siteName}-app"
    identity  = google_service_account.mw-account.unique_id
  }
}
