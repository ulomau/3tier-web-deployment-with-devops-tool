provider "google" {
  credentials = "secrets.GOOGLE_CREDENTIALS"
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
provider "google-beta" {
  credentials = "secretes.GOOGLE_CREDENTIALS"
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
