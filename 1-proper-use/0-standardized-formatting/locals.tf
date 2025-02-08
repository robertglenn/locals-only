
# Simple Example
locals {
  webBucketName = "${var.unit}-${var.locale}-bucket-${var.site}"
  logsBucketName    = "${var.unit}-${var.locale}-bucket-${var.site}-logs"
  bucketLocation    = "US"
  baseBucketLabels    = {
    appName = var.site
    bu      = var.unit
    loc     = var.locale
    cc      = var.cost_code
    po      = var.product_owner
  }
  websiteBucketLabels = merge(local.baseBucketLabels, {
    purpose = "static-website"
  })
  loggingBucketLabels = merge(local.baseBucketLabels, {
    purpose = "website-logging-bucket"
  })
}
