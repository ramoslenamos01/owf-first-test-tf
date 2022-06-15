


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

resource "google_bigquery_dataset" "default" {

  project                     = "sandbox-owafi"
  dataset_id                  = "othy"
  friendly_name               = "othmane"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}