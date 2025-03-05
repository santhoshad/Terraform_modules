resource "oci_core_vcn" "my_vcn" {
  compartment_id = var.compartment_id
  cidr_block     = var.vcn_cidr
  display_name   = "MyVCN"
  dns_label      = "myvcn"
}

output "vcn_id" {
  value = oci_core_vcn.my_vcn.id
}
