
resource "google_storage_bucket" "my-bucket" {
  name        = local.variableLocalName
  location    = local.constantLocalLocation
}
