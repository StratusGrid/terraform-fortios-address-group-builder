terraform {
  required_version = "~> 1.1"

  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = ">= 1.10"
    }
  }
}
