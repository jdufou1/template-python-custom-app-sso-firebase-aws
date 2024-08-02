terraform {
  backend "gcs" {
    bucket  = var.bucket_name
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.0.0" 
    }
  }
  
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name = var.bucket_name
}