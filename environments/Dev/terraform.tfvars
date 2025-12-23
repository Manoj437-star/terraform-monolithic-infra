rgs = {
  rg_prod = {
    name       = "rg-demo-dev"
    location   = "Central India"
    managed_by = "terraform"
    tags = {
      Environment = "Dev"
    }
  }
}

vnet = {
  vnet1 = {
    name                = "vnet-demo-dev"
    location            = "Central India"
    resource_group_name = "rg-demo-dev"
    address_space       = ["10.0.0.0/16"]
    tags = {
      environment = "dev"
    }
    subnets = [
      {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}




vms = {
  vm1 = {
    nicname = "nic1234"
    vnet_name = "vnet-demo-dev"
    subnet_name = "frontend-subnet"
    vm_name = "vm1"
    rg_name = "rg-demo-dev"
    location = "Central India"
    size = "Standard_D2s_v3"
    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234!"
    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }

  }

}




