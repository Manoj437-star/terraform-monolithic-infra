vms = {
   vm1 = {
    nicname = "nic1234"
    vnet_name = "vnet9454"
    subnet_name = "default"
    vm_name = "vm1"
    rg_name = "rg_dev"
    location = "central india"
    size = "Standard_D2s_v3"
    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234!"
     os_disk ={
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