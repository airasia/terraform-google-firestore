terraform {
  required_version = ">= 0.12.24" # see https://releases.hashicorp.com/terraform/
  experiments      = [variable_validation]
}

provider "google" {
  version = ">= 3.13.0" # see https://github.com/terraform-providers/terraform-provider-google/releases
}

resource "google_project_service" "firestore_api" {
  service            = "firestore.googleapis.com"
  disable_on_destroy = false
}

# WORK IN PROGRESS.
# Further development will follow.
# Pending on popular discussion in https://github.com/terraform-providers/terraform-provider-google/issues/3657
