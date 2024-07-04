output "network_name" {
  value = module.vpc.network_name
}

output "subnetworks" {
  value = module.vpc.subnetworks
}

output "subnetworks_cidr" {
  value = module.vpc.subnetworks_cidr
}

output "bucket_name" {
  value =  google_storage_bucket.python-app-tf
}
