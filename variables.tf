variable "project" {
    description = "The GCP project ID"
    type        = string
}

variable "region" {
    description = "The GCP region"
    type        = string
}

variable "image" {
    description = "The container image to deploy"
    type        = string
}
