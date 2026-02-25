output "email" {
  description = "The email address of the service account"
  value       = google_service_account.sa.email
}

output "unique_id" {
  description = "The unique ID of the service account"
  value       = google_service_account.sa.unique_id
}
