
terraform {
  backend "gcs" {
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}

