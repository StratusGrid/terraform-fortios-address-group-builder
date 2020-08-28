resource "fortios_firewall_address" "this" {
  for_each = var.address_object_subnets

  name    = "${var.address_group_name}-${each.value.network}"
  type    = "ipmask"
  subnet  = "${each.value.network} ${each.value.mask}"
  comment = var.comment

}

resource "fortios_firewall_addrgrp" "this" {
  name    = var.address_group_name
  comment = var.comment

  dynamic "member" {
    for_each = var.address_object_subnets

    content{
      name = fortios_firewall_address.this[member.key].name
    }
  }
}
