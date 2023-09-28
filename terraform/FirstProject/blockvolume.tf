resource "oci_core_volume" "test_volume" {
    #Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = var.compartment_id

    #Optional
  
    display_name = "Data Volume1"
  
    size_in_gbs = 50
}