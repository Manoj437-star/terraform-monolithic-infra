variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))

    }
  ))
}

variable "vnet" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
    tags                = optional(map(string))
    subnets = optional(list(object({
      name             = string
      address_prefixes = list(string)
    })), [])
  }))
}

variable "vms" {
  description = "Map of VM definitions for compute module"
  type = map(object({
    nicname = string
    vnet_name = string
    subnet_name = string
    vm_name = string
    rg_name = string
    location = string
    size = string
    admin_username = string
    admin_password = string
    os_disk = object({
      caching              = string
      storage_account_type = string
    })
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}
