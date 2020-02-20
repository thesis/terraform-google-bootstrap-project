output "project_name" {
  value = "${google_project.project.name}"
}

output "project_id" {
  value = "${google_project.project.id}"
}

output "terraform_backend_bucket_name" {
  value = "${google_storage_bucket.terraform_backend_bucket.name}"
}
