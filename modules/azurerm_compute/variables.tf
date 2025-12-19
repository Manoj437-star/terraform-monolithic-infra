variable "vms" {
  description = "Map of VM definitions"
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
