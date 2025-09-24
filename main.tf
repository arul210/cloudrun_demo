provider google {
  project = var.project
  region  = var.region
}

resource "google_cloud_run_service" "app" {
    name     = "webapp-hello"
    location = var.region
    template {
        spec {
            containers {
                image = var.image
            }
        }
    }
    traffic {
        percent         = 100
        latest_revision = true
    }
}

# Allow unauthenticated invocations
resource "google_cloud_run_service_iam_member" "noauth" {
    location    = google_cloud_run_service.app.location
    project     = var.project
    service     = google_cloud_run_service.app.name
    role        = "roles/run.invoker"
    member      = "allUsers"
}