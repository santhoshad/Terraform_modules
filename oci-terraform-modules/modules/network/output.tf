output "public_subnet_id" {
  value = oci_core_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = oci_core_subnet.private_subnet.id
}

output "internet_gateway_id" {
  value = oci_core_internet_gateway.my_igw.id
}

output "public_route_table_id" {
  value = oci_core_route_table.public_rt.id
}

output "private_route_table_id" {
  value = oci_core_route_table.private_rt.id
}
