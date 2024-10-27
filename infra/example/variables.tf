variable "project_id" {
  description = "GCP project id"
}

variable "region" {
  description = "region"
  default     = "us-east1" # Free tier region
}

variable "node_locations" {
  description = "Availability zone of the GKE nodes"
}

variable "node_ip_range" {
  default     = "10.0.0.0/16"
  description = "IP address range of GKE nodes"
}

variable "pod_ip_range" {
  default     = "10.1.0.0/16"
  description = "IP address range of k8s pods"
}

variable "service_ip_range" {
  default     = "10.2.0.0/16"
  description = "IP address range of k8s services"
}