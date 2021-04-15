terraform {
  backend "gcs" {
    credentials = var.GOOGLE_APP_CREDENTIALS
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}
