terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }

  required_version = "~> 1.5.7"
}

# Provider configuration
provider "google" {
  project = var.project_id
  region  = var.region
}