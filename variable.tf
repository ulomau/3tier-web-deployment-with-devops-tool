variable "name" {
  default = "tf-cluster"
}

variable "project" {
  default = "terraform-310215"
}

variable "location" {
  default = "us-central1"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "GOOGLE_APP_CREDENTIALS" {
  type =string
}
