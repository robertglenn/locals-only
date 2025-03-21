
locals {
  webBucketName   = "bucket-${var.site}"
  logsBucketName  = "bucket-${var.site}-logs"
  bucketLabels    = merge(
    var.bucketLabels,
    {
      app_name = var.site,
      provisioned_by = "opentofu"
    }
  )
}
