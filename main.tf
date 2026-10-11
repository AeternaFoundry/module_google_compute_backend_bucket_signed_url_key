resource "google_compute_backend_bucket_signed_url_key" "compute_backend_bucket_signed_url_keys" {
  for_each = var.compute_backend_bucket_signed_url_keys

  backend_bucket  = each.value.backend_bucket
  key_value       = each.value.key_value
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

