resource "google_project" "project" {
  name            = "${var.project_name}"
  project_id      = "${random_id.project_id.hex}"
  org_id          = "${var.org_id}"
  billing_account = "${var.billing_account}"
  labels          = "${var.labels}"
}

resource "random_id" "project_id" {
  prefix      = "${var.project_name}-"
  byte_length = 2
}

resource "google_project_iam_member" "project_owner_members" {
  count   = "${length(var.project_owner_members) > 0 ? length(var.project_owner_members) : 0}"
  project = "${google_project.project.id}"
  role    = "roles/owner"
  member  = "${element(var.project_owner_members, count.index)}"
}

resource "google_project_service" "project" {
  count                      = "${length(var.project_service_list)}"
  project                    = "${google_project.project.project_id}"
  service                    = "${var.project_service_list[count.index]}"
  disable_dependent_services = "${var.disable_dependent_services}"
  disable_on_destroy         = "${var.disable_on_destroy}"
}

resource "google_storage_bucket" "terraform_backend_bucket" {
  name     = "${google_project.project.name}-terraform-backend-bucket"
  project  = "${google_project.project.project_id}"
  location = "${var.location}"
  labels   = "${var.labels}"

  versioning {
    enabled = true
  }
}
