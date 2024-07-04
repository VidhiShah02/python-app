module "vpc" {
  source       = "./vpc-module"
  project_id   = var.project_id
  region       = var.region
  network_name = var.network_name
  subnets      =  var.subnets
  cloud_run_service_name = var.cloud_run_service_name
  bucket_name = var.bucket_name
}


