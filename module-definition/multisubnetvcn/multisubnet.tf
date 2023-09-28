variable vcn_display_name {
    default="Multi Subnet VCN"
}
variable vcn_cidr_block {
    default="10.0.0.0/16"
}
variable compartment_ocid {}
resource "oci_core_vcn" "test_vcn" {
    #Required
    cidr_block = var.vcn_cidr_block
    compartment_id = var.compartment_ocid

    #Optional
    display_name = var.vcn_display_name
  
}

output vcnid {
    value= oci_core_vcn.test_vcn.id
}

variable subnet_count{
    default=2
}
variable subnet_name_prefix {
    default="subnet-"
}
resource "oci_core_subnet" "test_subnet"{
    count=var.subnet_count
    cidr_block=cidrsubnet(var.vcn_cidr_block,8,count.index)
    compartment_id=var.compartment_ocid
    vcn_id=oci_core_vcn.test_vcn.id
    display_name="${var.subnet_name_prefix}${count.index+1}"
}