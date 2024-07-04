variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "folkloric-drive-411517"
}

variable "region" {
  description = "GCP project region"
  type        = string
  default     = "us-central1"
}

variable "tf_service_account" {
  description = "Terraform Service Account"
  type        = string
  default     = "terraform-sa-203@folkloric-drive-411517.iam.gserviceaccount.com"
}

variable "zone" {
  description = "GCP project zone"
  type        = string
  default     = "us-cental1-a"
}

variable "enabled_apis" {
  type = list(string)
  default = [
    "compute.googleapis.com",
    "storage.googleapis.com",
    "bigquery.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "run.googleapis.com",
    "artifactregistry.googleapis.com",
    "cloudbuild.googleapis.com",
    "serviceusage.googleapis.com",
    "vpcaccess.googleapis.com",
    "containerregistry.googleapis.com"
  ]
}
variable "repo_name" {
  description = "The name of the Cloud Source Repository"
  type        = string
  default     = "python-app"
}

variable "registery_name" {
  description = "The name of the Artifact Registery"
  type        = string
  default     = "python-app"
}

variable "bucket_name" {
  description = "The name of the Storage Bucket"
  type        = string
  default     = "python-app-tf"
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud run service"
  type        = string
  default     = "python-app-run"
}

variable "vpc_connector_name" {
  description = "The name of the VPC Connector"
  type        = string
  default     = "python-app-vpc-connect"
}

# variable "vpc_connector_subnet" {
#   description = "The subnet to use for the VPC Connector"
#   type        = string
# }

variable "github_token" {
  description = "GitHub token for Cloud Build"
  type        = string
  sensitive   = true
  default     = "ghu_SBMnCJXp8rPYSENBQX9Pq7yylkKhfH3kWDzX"
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = list(string)
  default = [
        "external-vpc"
  ]
}

variable "subnets" {
  description = "A list of subnet configurations"
   type = map(object({
    name   = string
    region = string
    cidr   = string
    network = string
  }))
  default =  {
    subnets_1 =   {
    name   = "subnet-1"
    region = "us-central1"
    cidr   = "10.0.1.0/28"
    network = "external-vpc"
  },
  subnets_2 =   {
    name   = "subnet-2"
    region = "us-central1"
    cidr   = "10.0.2.0/24"
    network = "external-vpc"
  }
    subnets_3 =   {
    name   = "subnet-3"
    region = "us-central1"
    cidr   = "10.0.3.0/24"
    network = "external-vpc"
  },

  } 
}