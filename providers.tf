provider "google" {
  credentials = "GOOGLE_CREDENTIALS"
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
provider "google-beta" {
  credentials = "GOOGLE_CREDENTIALS"
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
