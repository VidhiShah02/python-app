#if cloud run needs to be created as a individual resource. use below code-snippet

# resource "google_cloud_run_service" "cloud-run-pyhton" {
#   name       = var.cloud_run_service_name
#   location   = var.region
#   template {
#     spec {
#       containers {
#         name  = "hello-world"
#         image = "us-docker.pkg.dev/cloudrun/container/hello"
#         ports {
#           container_port = 8080
#         }
#         env {
#           name  = "BUCKET_NAME"
#           value = "in-memory"
#         }
#         args = [
#           "/bin/sh",
#           "-c",
#           "gcsfuse ${var.bucket_name} /mnt/bucket && exec /your-app-binary"
#         ]
#         volume_mounts {
#           mount_path = "/mnt/bucket"
#           name       = "gcs-bucket"
#         }
#       }

#       volumes {
#         name = "gcs-bucket"
#         secret {
#           secret_name = "gcs-fuse-creds"
#         }
#       }
#     }

#   }

#   traffic {
#     percent         = 100
#     latest_revision = true
#   }
  
# }
# data "google_iam_policy" "noauth" {
#   binding {
#     role = "roles/run.invoker"
#     members = [
#       "allUsers",
#     ]
#   }
# }

# resource "google_cloud_run_service_iam_policy" "noauth" {
#   location = google_cloud_run_service.cloud-run-pyhton.location
#   project  = var.project_id
#   service  = google_cloud_run_service.cloud-run-pyhton.name
#   policy_data = data.google_iam_policy.noauth.policy_data
# }
