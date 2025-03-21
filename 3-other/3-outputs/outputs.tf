
output "instanceIDs" {
  value = concat(
    google_compute_instance.mw-green.*.id,
    google_compute_instance.mw-blue.*.id
  )
}

output "instanceIPs" {
  value = local.instance_ips
}

output "machineType" {
  value = local.mwareMachineType
}
