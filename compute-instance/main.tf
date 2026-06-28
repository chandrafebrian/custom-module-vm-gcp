resource "google_compute_instance" "vm" {

  name         = var.name
  project      = var.project_id
  zone         = var.zone
  machine_type = var.machine_type


  boot_disk {

    initialize_params {

      image = var.image

      size = var.disk_size

    }

  }


  network_interface {

    network = var.network

    subnetwork = var.subnetwork


    access_config {}
  }


  tags = var.tags


  metadata = var.metadata


  labels = var.labels


  dynamic "service_account" {

    for_each = var.service_account_email != null ? [1] : []

    content {

      email = var.service_account_email

      scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
      ]

    }

  }


  metadata_startup_script = var.startup_script


}
