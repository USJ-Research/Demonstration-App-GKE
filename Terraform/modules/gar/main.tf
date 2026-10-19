variable "repository_name" {}
variable "location" {}

resource "google_artifact_registry_repository" "repo" {
  location      = var.location
  repository_id = var.repository_name
  format        = "DOCKER"
  mode          = "STANDARD_REPOSITORY"

  cleanup_policy_dry_run = true
}

output "repository_id" { value = google_artifact_registry_repository.repo.repository_id }
