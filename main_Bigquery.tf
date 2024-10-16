resource "google_bigquery_dataset" "dataset" {
  dataset_id = "sample"
  location   = var.location
}

resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = var.table_id
  deletion_protection = false
  schema     = <<EOF
[
  {
    "name": "state",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "ID",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "ORI",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "incident_number",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "date_HRF",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "date_SIF",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "hour",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "total_offense",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "total_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "total_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "violence_offense",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "theft_offense",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "drug_offense",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "sex_offense",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "kidnapping_trafficking",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "other_offense",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "gun_involvement",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "completed",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "attempted",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "drug_involvement",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "property_value",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "stolen_motor",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "male_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "female_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "unknown_sex_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "w_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "b_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "i_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "a_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "p_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "unknown_race_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "minor_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "non_minor_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "unknown_age_victim",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "offender_wi_family",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "offender_outside_family",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "offender_not_known",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "male_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "female_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "unknown_sex_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "w_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "b_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "i_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "a_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "p_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "unknown_race_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "minor_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "non_minor_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "unknown_age_offender",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "sample_partition",
    "mode": "",
    "type": "DATE",
    "description": "",
    "fields": []
  },
  {
    "name": "original_partition",
    "mode": "",
    "type": "DATE",
    "description": "",
    "fields": []
  }
]
EOF
}

resource "google_bigquery_table" "view" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "Individual_Incident_hist_vw"
  deletion_protection = false
  view {
    query = "SELECT * FROM `playpen-79b253.sample.Individual_Incident_hist`"
    use_legacy_sql = false
  }
  depends_on = [ google_bigquery_table.table ]
}
