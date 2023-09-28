module "multisubnetvcn" {
    source="./multisubnetvcn"
    vcn_cidr_block="172.16.0.0/16"
    compartment_ocid=var.compartment_ocid
    vcn_display_name="Multi Subs VCN1"
    subnet_count=2
    subnet_name_prefix="My Subnet - "
}

output ocid {
    value=module.multisubnetvcn.vcnid
}
