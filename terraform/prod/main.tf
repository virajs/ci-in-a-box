provider "google" {
  credentials = ""
  project      = "${var.gcp_project_name}"
  region       = "europe-west1"
}

module "container" {
  source = "../modules/container"
  env = "prod"
  ip_range = "10.34.97.0/24"
  container_cidr_range = "10.35.96.0/19"
  cluster_password = "${var.cluster_password}"
  network_name = "{var.network_name}"
  stack_name = "${var.stack_name}"
}
