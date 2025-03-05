module "vcn" {
  source          = "./modules/vcn"
  compartment_id  = var.compartment_id
  vcn_cidr        = var.vcn_cidr
}

module "network" {
  source              = "./modules/network"
  compartment_id      = var.compartment_id
  vcn_id              = module.vcn.vcn_id
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "security" {
  source         = "./modules/security"
  compartment_id = var.compartment_id
  vcn_id         = module.vcn.vcn_id
}
