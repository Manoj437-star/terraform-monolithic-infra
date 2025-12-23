resource "azurerm_network_interface" "nic" {
  for_each = var.nics

  name                = each.value.nicname
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = lookup(each.value, "ip_config_name", "internal")
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = lookup(each.value, "private_ip_allocation", "Dynamic")
    public_ip_address_id          = lookup(each.value, "public_ip_id", null)
  }
}