provider "google" {
  version = "3.5.0"

  credentials = file("k2key.json")

  project = "airflow1"
  region  = "us-central1"
  zone    = "us-central1-c"
}



resource "google_storage_bucket"  "demobucket" {
  name          = var.instance_name
  location      = "us-central1"
  force_destroy = true
  
}
