# resource "google_artifact_registry_repository" "python-app" {
#   location = var.region
#   repository_id = "python-app"
#   description = "Python App Repository"
#   format = "DOCKER"
# }
resource "google_artifact_registry_repository" "python-app" {
  location = var.region
  repository_id = var.registery_name
  description = "Python App Repository"
  format = "DOCKER"
}