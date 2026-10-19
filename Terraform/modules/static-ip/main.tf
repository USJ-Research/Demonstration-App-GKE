variable "name" {}

resource "google_compute_global_address" "static_ip" {
  name         = var.name
  address_type = "EXTERNAL"
  ip_version   = "IPV4"
}

output "address" { value = google_compute_global_address.static_ip.address }
output "name" { value = google_compute_global_address.static_ip.name }
