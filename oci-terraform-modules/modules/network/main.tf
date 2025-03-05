resource "oci_core_internet_gateway" "my_igw" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "InternetGateway"
}

resource "oci_core_route_table" "public_rt" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "PublicRouteTable"

  route_rules {
    network_entity_id = oci_core_internet_gateway.my_igw.id
    destination       = "0.0.0.0/0"
  }
}

resource "oci_core_route_table" "private_rt" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "PrivateRouteTable"
}

resource "oci_core_subnet" "public_subnet" {
  compartment_id        = var.compartment_id
  vcn_id               = var.vcn_id
  cidr_block           = var.public_subnet_cidr
  prohibit_public_ip_on_vnic = false
}

resource "oci_core_subnet" "private_subnet" {
  compartment_id        = var.compartment_id
  vcn_id               = var.vcn_id
  cidr_block           = var.private_subnet_cidr
  prohibit_public_ip_on_vnic = true
}
