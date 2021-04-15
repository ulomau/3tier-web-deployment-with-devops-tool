provider "google" {
  credentials = "./tf-key.json"
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
provider "google-beta" {
  credentials = "./tf-key.json"
  project     = "terraform-310215"
  region      = "us-central1"
  zone        = "us-central1-a"
}
