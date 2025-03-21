
output "accountName" {
  value = local.mwareAccountName
}

output "accountID" {
  value = google_service_account.mw-account.unique_id
}

output "computeName" {
  value = local.mwareComputeName
}

output "instanceID" {
  value = google_compute_instance.mw-server.id
}

output "computeZone" {
  value = local.mwareComputeZone
}

output "machineType" {
  value = local.mwareMachineType
}
