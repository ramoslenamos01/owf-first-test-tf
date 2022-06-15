
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {

project = "sandbox-owafi"
  
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