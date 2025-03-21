
locals {
  websiteBucketName = "bucket-${var.siteName}"
  logsBucketName    = "bucket-${var.siteName}-logs"
  bucketLocation    = "US"
  mwareComputeName  = "bucket-${var.siteName}"
  mwareComputeZone  = "us-central1-a"
  mwareMachineType  = "e2-medium"
  labels            = {
    appName = "${var.siteName}_app"
  }
}
