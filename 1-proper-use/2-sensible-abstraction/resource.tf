
resource "google_storage_bucket" "website-bucket" {
  for_each  = local.websiteBucketNames

  name      = each.value
  location  = local.bucketLocation
  labels    = local.customWebBucketLabels[each.key]
  # ...
  
  logging {
    log_bucket  = google_storage_bucket.logs-bucket.id
  }
}

resource "google_storage_bucket" "logs-bucket" {
  for_each  = local.logsBucketNames

  name      = each.value
  location  = local.bucketLocation
  labels    = local.customLogBucketLabels[each.key]
  # ...
}

resource "google_compute_instance" "api-server" {
  for_each      = local.apiWebserverNames

  name          = each.value
  zone          = local.bucketLocation
  labels        = local.customWebserverLabels[each.key]
  machine_type  = "e2-medium"
  # ...

  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}

resource "google_compute_instance" "api-middleware" {
  for_each  = local.apiMiddlewareNames

  name    = each.value
  zone    = local.bucketLocation
  labels  = local.customMiddlewareLabels[each.key]
  machine_type = "e2-medium"
  # ...

  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}
