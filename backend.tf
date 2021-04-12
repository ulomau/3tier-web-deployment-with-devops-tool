terraform {
  backend "gcs" {
    credentials = "./tf_serviceaccount.json"
    bucket      = "tf-bucketulo"
    prefix      = "terraform/state"
  }
}
