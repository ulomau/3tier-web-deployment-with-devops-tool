
terraform {
  backend "gcs" {
    credentials = "secrets.GOOGLE_CREDENTIALS"
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}

