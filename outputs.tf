output "compute_backend_bucket_signed_url_keys_id" {
  description = "Map of id values across all compute_backend_bucket_signed_url_keys, keyed the same as var.compute_backend_bucket_signed_url_keys except keys with no id are omitted"
  value       = { for k, v in google_compute_backend_bucket_signed_url_key.compute_backend_bucket_signed_url_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_backend_bucket_signed_url_keys_backend_bucket" {
  description = "Map of backend_bucket values across all compute_backend_bucket_signed_url_keys, keyed the same as var.compute_backend_bucket_signed_url_keys except keys with no backend_bucket are omitted"
  value       = { for k, v in google_compute_backend_bucket_signed_url_key.compute_backend_bucket_signed_url_keys : k => v.backend_bucket if v.backend_bucket != null && length(v.backend_bucket) > 0 }
}
output "compute_backend_bucket_signed_url_keys_deletion_policy" {
  description = "Map of deletion_policy values across all compute_backend_bucket_signed_url_keys, keyed the same as var.compute_backend_bucket_signed_url_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_backend_bucket_signed_url_key.compute_backend_bucket_signed_url_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_backend_bucket_signed_url_keys_key_value" {
  description = "Map of key_value values across all compute_backend_bucket_signed_url_keys, keyed the same as var.compute_backend_bucket_signed_url_keys except keys with no key_value are omitted"
  value       = { for k, v in google_compute_backend_bucket_signed_url_key.compute_backend_bucket_signed_url_keys : k => v.key_value if v.key_value != null && length(v.key_value) > 0 }
  sensitive   = true
}
output "compute_backend_bucket_signed_url_keys_name" {
  description = "Map of name values across all compute_backend_bucket_signed_url_keys, keyed the same as var.compute_backend_bucket_signed_url_keys except keys with no name are omitted"
  value       = { for k, v in google_compute_backend_bucket_signed_url_key.compute_backend_bucket_signed_url_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_backend_bucket_signed_url_keys_project" {
  description = "Map of project values across all compute_backend_bucket_signed_url_keys, keyed the same as var.compute_backend_bucket_signed_url_keys except keys with no project are omitted"
  value       = { for k, v in google_compute_backend_bucket_signed_url_key.compute_backend_bucket_signed_url_keys : k => v.project if v.project != null && length(v.project) > 0 }
}

