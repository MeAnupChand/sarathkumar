variable user_ocid{}
variable tenancy_ocid {}
variable fingerprint {}
#variable private_key_path {}
#variable region{}

variable private_key_path {
default="mykey.pem"
}
variable region{
default="us-ashburn-1"
}
variable compartment_id {}
variable vcn_cidr_block {}
#   default ="10.0.0.0/16"

variable subnet_cidr_block {}
#default="10.0.0.0/24"

variable instance_shape {}
variable instance_display_name {}
variable instance_hostname_label {}
variable instance_platform_config_type {}
variable instance_shape_config_memory_in_gbs {}
variable instance_shape_config_ocpus {}
variable ssh_public_key {}
variable hostname_label {}
#variable availability_domain {}
variable image_ocid {}



