
locals {
  webBucketName     = "${var.website}-bucket"
  logsBucketName    = "${local.webBucketName}-logs"
  webBucketName_eu  = "${local.webBucketName}_eu"
  logsBucketName_eu = "${local.logsBucketName}_eu"
  bucketLocation    = "US"
  bucketLocation_eu = "EU"
}
