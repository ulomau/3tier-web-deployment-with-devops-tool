
terraform {
  backend "gcs" {
    credentials = "./tf-key.json"
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}

