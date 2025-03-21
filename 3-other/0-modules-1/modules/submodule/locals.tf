
locals {
  webBucketName   = "bucket-${var.site}"
  logsBucketName  = "bucket-${var.site}-logs"
  bucketLabels    = merge(
    var.bucketLabels,
    {
      appName = var.site
    }
  )
}
