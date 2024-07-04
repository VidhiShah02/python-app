resource "google_compute_network" "vpc_network" {
  for_each     = toset(var.network_name)
  name        = each.value
  auto_create_subnetworks = false
}


