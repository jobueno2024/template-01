variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Region for Cloud Composer environment"
  type        = string
  default     = "asia-northeast1"
}

variable "environment_name" {
  description = "Name of the Cloud Composer environment"
  type        = string
  default     = "composer-dev"
}

variable "composer_machine_type" {
  description = "Machine type for Cloud Composer nodes"
  type        = string
  default     = "n1-standard-1"
}

variable "composer_node_count" {
  description = "Number of nodes for Cloud Composer environment"
  type        = number
  default     = 2
}

variable "composer_disk_size" {
  description = "Disk size in GB for Cloud Composer nodes"
  type        = number
  default     = 20
}

variable "composer_image_version" {
  description = "Cloud Composer image version"
  type        = string
  default     = "composer-2.5.3-airflow-2.5.3"
}