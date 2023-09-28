data "oci_identity_availability_domains" "ads" {
    #Required
    compartment_id = var.tenancy_ocid
}


output "showADs" {
    value = data.oci_identity_availability_domains.ads.availability_domains[*].name
}