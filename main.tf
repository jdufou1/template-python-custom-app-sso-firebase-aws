terraform {
  backend "gcs" {
    bucket  = "terraform-state"
    prefix  = "terraform/state"  # Optional: Organize state files in a specific path within the bucket
  }
}

# main.tf
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name = var.bucket_name
}