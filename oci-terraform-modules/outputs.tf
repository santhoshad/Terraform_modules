output "vcn_id" {
  value = module.vcn.vcn_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "public_route_table_id" {
  value = module.network.public_route_table_id
}

output "private_route_table_id" {
  value = module.network.private_route_table_id
}

output "public_security_list_id" {
  value = module.security.public_security_list_id
}

output "private_security_list_id" {
  value = module.security.private_security_list_id
}
