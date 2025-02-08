
# Simple Example
locals {
  websiteBucketName = "bucket-${var.siteName}"
  logsBucketName    = "bucket-${var.siteName}-logs"
  bucketLocation    = "US"
  baseBucketLabels    = {
    appName = var.siteName
    bu      = var.business_unit
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


# Overly Complex Example
locals {
  simpleVariable01 = lower("example-${var.siteName}-01")
  simpleVariable02 = [
    "fieldVal01",
    "fieldVal02"
  ]
  complexVariable = [
    { a = "123", b = 456 },
    { a = "789", b = 111 },
  ]
  compoundVariable01 = [ for s in local.simpleVariable02 : "complex-${s}" ]
  compoundVariable02 = [ for s in local.complexVariable : merge(s, { 
    name = local.simpleVariable01 
  }) ]
  overlyComplexVariable = { for s in local.compoundVariable02 : s.a => s if s.b > 120 }
}
