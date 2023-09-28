module "vcn" {
  source           = "oracle-terraform-modules/default-vcn/oci"
  compartment_ocid = "${var.compartment_ocid}"
  vcn_display_name = "VCN Module1"
  vcn_cidr         = "192.168.0.0/16"
}