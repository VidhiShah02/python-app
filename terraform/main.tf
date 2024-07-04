provider "google" {
project = var.project_id
region = var.region
credentials = "gcp-keys.json"
}

resource "google_project_service" "api" {
  for_each = toset(var.enabled_apis)
  service = each.value
  disable_on_destroy = true
}

resource "google_secret_manager_secret" "gcs_fuse_creds" {
  secret_id = "gcs-fuse-creds"
  version_destroy_ttl = "2592000s"
  replication {
    auto {}
  }
}
