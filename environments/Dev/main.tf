module "rgs" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  source = "../../modules/azurerm_networking"
  vnet   = var.vnet
}

# module "compute" {
#   source = "../../modules/azurerm_compute"
#   vms    = var.vms
# }
