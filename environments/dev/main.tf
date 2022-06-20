
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.90.0"
    }
  }
}



locals {
    env        = "dev"
    project_id = "[MY_PROJECT]"
    location   = "EU"
    region     = "europe-west1"
}

provider "google" {
    project = local.project_id
}


resource "google_bigquery_dataset" "default" {

  
  dataset_id                  = "othy"
  friendly_name               = "othmane"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}