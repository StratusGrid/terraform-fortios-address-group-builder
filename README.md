### Description
This module takes a map of network configurations and makes address objects for each one, nested in an address group.

### Example Configuration
```
module "google_dns_address_group" {
  source = "./modules/address-group-builder"

  address_group_name = "google-dns"
  comment            = "Google DNS Servers"

  address_object_subnets = {
    google_dns_8s = {
      network = "8.8.8.8"
      mask    = "255.255.255.255"
    }
    google_dns_4s = {
      network = "8.8.4.4"
      mask    = "255.255.255.255"
    }
  }
}
```