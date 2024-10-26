resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.node_ip_range

  secondary_ip_range {
    range_name    = "pod-range"
    ip_cidr_range = var.pod_ip_range
  }

  secondary_ip_range {
    range_name    = "service-range"
    ip_cidr_range = var.service_ip_range
  }
}