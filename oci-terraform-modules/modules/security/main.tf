resource "oci_core_security_list" "public_security_list" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "PublicSecurityList"

  ingress_security_rules {
    protocol = "6"
    source   = "0.0.0.0/0"
    tcp_options {
         min = 22
         max = 22
          }
  }

  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
  }
}

resource "oci_core_security_list" "private_security_list" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "PrivateSecurityList"

  ingress_security_rules {
    protocol = "all"
    source   = "10.0.0.0/16"
  }

  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
  }
}
