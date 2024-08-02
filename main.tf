terraform {
  backend "gcs" {
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.39.1" 
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name = "jdufou1-test-cicd"
  project = var.project_id
  location = var.region
  storage_class = "STANDARD"
  force_destroy = true
}