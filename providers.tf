provider "google" {
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
provider "google-beta" {
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}


terraform {
  backend "gcs" {
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}
