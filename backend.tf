
terraform {
  backend "gcs" {
    credentials = GOOGLE_CREDENTIALS
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}

