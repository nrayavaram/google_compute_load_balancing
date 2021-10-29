provider "google" {
  access_token = var.access_token
  project      = "airline1-sabre-wolverine"
}


resource "google_compute_forwarding_rule" "example" {
  name                  = "l7-ilb-forwarding-rule"
  ip_protocol           = "TCP"
  load_balancing_scheme = "INTERNAL_MANAGED"
  port_range            = "443"
}
