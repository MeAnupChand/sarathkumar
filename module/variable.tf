variable compartment_ocid {}
variable tenancy_ocid {}
variable user_ocid{}
variable fingerprint {}
variable private_key_path {}
variable region{}
variable vcn_cidr_block {
    default ="10.0.0.0/16"
}
variable subnet_cidr_block{
    default="10.0.0.0/24"
}
variable namespace {
    default="ocuocictrng31"
}

variable instance_display_name {
    default="instance1"
}

variable ssh_public_key {
    default="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrPKYT4KX+/5nvK2K8/WOcPPbugMZ0Lbp9hO3zzjB4k7tUT//IuM8tUeGFelP5X1aZ8YTY4AUVVds5/yRGKVN4B8cvBtlfnnl4ubCaaT/ZyAenliyE8s+HX5Ad8mb4e+YRLU1qTVe5/EIvZ587rvHwisboImLYjYb//IOaFRhXQOmycAiU4DGxvm6Zo4mZKyhOq4gv4JUI40WkI0NUfC+xroQ1qInG0QVED7DRtcW0aYre+poBS5RvFfjrW82zhBaTcOcY/Rv1SPT2zU0dbbNUUPhrbjC3cq79rvmrlehUN6JHtJ0i8xD1B1I2fiDZ2PxsWbC5lJS1ARMW0AEkTeWX x_99212149@90e6072cad19"
}

variable image_ocid {}
variable custom_bootstrap_file_name{}
variable instance_shape{default="VM.Standard.A1.Flex"}