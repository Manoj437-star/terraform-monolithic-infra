output "vm_ids" {
  description = "Map of VM ids created by the compute module"
  value = { for k, v in azurerm_linux_virtual_machine.example : k => v.id }
}
