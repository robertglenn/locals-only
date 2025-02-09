
# Simple Example
locals {
  websiteBucketNames  = { for name in var.siteNames : name => "bucket-${name}" }
  logsBucketNames     = { for name in var.siteNames : name => "bucket-${name}-logs" }
  apiWebserverNames   = { for name in var.siteNames : name => "compute-${name}-webserver" }
  apiMiddlewareNames  = { for name in var.siteNames : name => "compute-${name}-middleware" }
  bucketLocation    = "US"
  baseLabels  = {
    bu  = var.business_unit
    cc  = var.cost_code
    po  = var.product_owner
  }
  bucketLabels  = {
    resource_type     = "bucket"
    resource_category = "storage"
  }
  computeLabels  = {
    resource_type     = "instance"
    resource_category = "compute"
  }
  websiteBucketLabels = merge(local.baseLabels, local.bucketLabels, {
    purpose = "static-website"
  })
  loggingBucketLabels = merge(local.baseLabels, local.bucketLabels, {
    purpose = "website-logging-bucket"
  })
  webserverLabels = merge(local.baseLabels, local.computeLabels, {
    purpose = "api-webserver"
  })
  middlewareLabels = merge(local.baseLabels, local.computeLabels, {
    purpose = "api-middleware"
  })
  customWebBucketLabels =  {
    for name in var.siteNames : name => merge(local.websiteBucketLabels, {
      appName = name
    }) 
  }
  customLogBucketLabels =  {
    for name in var.siteNames : name => merge(local.loggingBucketLabels, {
      appName = name
    }) 
  }
  customWebserverLabels =  {
    for name in var.siteNames : name => merge(local.webserverLabels, {
      appName = name
    }) 
  }
  customMiddlewareLabels =  {
    for name in var.siteNames : name => merge(local.middlewareLabels, {
      appName = name
    }) 
  }
}
