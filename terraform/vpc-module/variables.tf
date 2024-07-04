variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP project region"
  type        = string
}


variable "network_name" {
  description = "The name of the VPC network"
  type        = list(string)
}

variable "subnets" {
  description = "A list of subnet configurations"
   type = map(object({
    name   = string
    region = string
    cidr   = string
    network= string
  }))
}
variable "bucket_name" {
  description = "The name of the Storage Bucket"
  type        = string
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud run service"
  type        = string
}