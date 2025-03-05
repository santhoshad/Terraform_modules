output "public_security_list_id" {
  value = oci_core_security_list.public_security_list.id
}

output "private_security_list_id" {
  value = oci_core_security_list.private_security_list.id
}
