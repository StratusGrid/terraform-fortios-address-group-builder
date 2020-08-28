output "address_group_name" {
  description = "The name of the address group created by the module"
  value       = fortios_firewall_addrgrp.this.name
}
