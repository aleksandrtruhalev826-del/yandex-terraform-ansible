output "external_ips" {

  value = [
    for vm in yandex_compute_instance.vm :
    vm.network_interface.0.nat_ip_address
  ]

}
