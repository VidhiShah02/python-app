# resource "google_compute_subnetwork" "vpc_subnetwork" {
#   for_each      = toset(var.network_name)
#   name          = "${each.value}-subnet"
#   ip_cidr_range = [
#    for count_index in local.subnet_counts : { 
#     ip_cidr_range = lookup(var.subnets[count.index], "cidr", "")  
#   }
#   ]
#   region        = var.region
#   network       = google_compute_network.vpc_network.id
# }

resource "google_compute_subnetwork" "vpc_subnetwork" {
  depends_on = [ google_compute_network.vpc_network ]
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  name          = each.key
  ip_cidr_range = each.value.cidr
  region        = each.value.region
  network       = google_compute_network.vpc_network[each.value.network].id
}