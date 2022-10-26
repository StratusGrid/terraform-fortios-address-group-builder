<!-- BEGIN_TF_DOCS -->
# terraform-fortios-address-group-builder

GitHub: [StratusGrid/terraform-fortios-address-group-builder](https://github.com/StratusGrid/terraform-fortios-address-group-builder)

This module takes a map of network configurations and makes address objects for each one, nested in an address group.

## Example Usage:

```hcl
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
---

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1 |
| <a name="requirement_fortios"></a> [fortios](#requirement\_fortios) | >= 1.10 |

## Resources

| Name | Type |
|------|------|
| [fortios_firewall_address.this](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/firewall_address) | resource |
| [fortios_firewall_addrgrp.this](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/firewall_addrgrp) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_group_name"></a> [address\_group\_name](#input\_address\_group\_name) | Used to name address group, used as prefix for address object names | `string` | n/a | yes |
| <a name="input_address_object_subnets"></a> [address\_object\_subnets](#input\_address\_object\_subnets) | An address object is created for each subnet, and this is appended to the group name for objects. | <pre>map(object(<br>    {<br>      network = string<br>      mask    = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | A comment to use on all address objects and the address group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_address_group_name"></a> [address\_group\_name](#output\_address\_group\_name) | The name of the address group created by the module |

---

<span style="color:red">Note:</span> Manual changes to the README will be overwritten when the documentation is updated. To update the documentation, run `terraform-docs -c .config/.terraform-docs.yml .`
<!-- END_TF_DOCS -->