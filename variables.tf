variable "project_id" {
  description = "The ID of the project in which to create resources."
  type        = string
  default = "playpen-79b253"    
}

variable "service_account_name" {
  description = "The name of the service account to create."
  type        = string
  default     = "dataflow-service-account"
}

variable "bucket_name" {
  description = "The name of the bucket to create."
  type        = string
  default = "pec-dataflow-poc"
}

variable "location" {
  description = "The location in which to create the bucket."
  type        = string
  default     = "EU"
}

variable "region" {
  description = "The region in which to create the bucket."
  type        = string
  default     = "europe-west1"
}

variable "credentials" {
  description = "The credentials."
  type        = string
  default     = "playpen-79b253-6e09107f38e4.json"
}

variable "table_id" {
  description = "The Table Name"
  type        = string
  default     = "Individual_Incident_hist"
}