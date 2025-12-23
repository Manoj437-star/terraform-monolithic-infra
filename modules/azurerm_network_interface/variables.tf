
variable "nics" {
	description = "Map of NIC definitions. Each value must contain: nicname, location, rg_name, subnet_id. Optional keys: ip_config_name, private_ip_allocation, public_ip_id, tags."
	type        = map(any)
}

