
output "network_name" {
  value = var.network_name[0]
}


output "subnetworks" {
  value = google_compute_subnetwork.vpc_subnetwork[values(var.subnets)[0].name].name
}

output "subnetworks_cidr" {
  value = var.subnets["subnets_1"].cidr
}
# output "cloud_run_service_url" {
#   value = google_cloud_run_service.cloud-run-python.status
# }