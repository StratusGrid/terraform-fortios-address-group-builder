variable "address_group_name" {
  description = "Used to name address group, used as prefix for address object names"
  type        = string
}

variable "comment" {
  description = "A comment to use on all address objects and the address group"
  type        = string
}

variable "address_object_subnets" {
  description = "An address object is created for each subnet, and this is appended to the group name for objects."
  type        = map(object(
    {
      network = string
      mask    = string
    }
  ))
}