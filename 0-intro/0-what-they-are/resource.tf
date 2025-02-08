
resource "google_storage_bucket" "my-bucket" {
  name        = local.constantLocalName
  location    = local.constantLocalLocation
}
