resource "yandex_compute_instance" "vm" {
  count       = 3
  name        = "vm-${count.index + 1}"
  platform_id = "standard-v3"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = 15
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(pathexpand("~/.ssh/id_ed25519.pub"))}"
  }
}
