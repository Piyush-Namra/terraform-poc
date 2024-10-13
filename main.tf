
resource "google_service_account" "dataflow_sa" {
  account_id   = var.service_account_name
  display_name = "Dataflow Service Account"
}

resource "google_project_iam_member" "dataflow_role" {
  for_each = toset([
    "roles/dataflow.admin",
    "roles/storage.admin"
  ])
  project = var.project_id
  member  = "serviceAccount:${google_service_account.dataflow_sa.email}"
  role    = each.value
}

resource "google_storage_bucket" "dataflow_bucket" {
  name     = var.bucket_name
  location = var.region
}

resource "google_storage_bucket_iam_member" "bucket_access" {
  bucket = google_storage_bucket.dataflow_bucket.name
  member = "serviceAccount:${google_service_account.dataflow_sa.email}"
  role   = "roles/storage.objectAdmin"
}