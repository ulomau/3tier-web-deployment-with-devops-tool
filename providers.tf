provider "google" {
  credentials = var.GOOGLE_APP_CREDENTIALS
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
provider "google-beta" {
  credentials = var.GOOGLE_APP_CREDENTIALS
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
