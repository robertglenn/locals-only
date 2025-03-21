
locals {
  siteName          = var.siteName != "" ? var.siteName : var.siteName-default
  websiteBucketName = "bucket-${local.siteName}"
  logsBucketName    = "bucket-${local.siteName}-logs"
  bucketLocation    = var.bucketLocation != "" ? var.bucketLocation : var.bucketLocation-default
}
