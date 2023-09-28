resource "oci_core_instance" "test_vm_instance" {
    #Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = var.compartment_id
    shape = var.instance_shape

    metadata = {
        ssh_authorized_keys = var.ssh_public_key
    }
    # compute_cluster_id = oci_core_compute_cluster.test_compute_cluster.id
   
    display_name = var.instance_display_name
  
    #fault_domain = var.instance_fault_domain
   # freeform_tags = {"Department"= "Finance"}
   # hostname_label = var.instance_hostname_label

   create_vnic_details {

        #Optional
        
        hostname_label = var.hostname_label
       
        subnet_id = oci_core_subnet.test_subnet.id

    }

    shape_config {

        #Optional
        #baseline_ocpu_utilization = var.instance_shape_config_baseline_ocpu_utilization
        memory_in_gbs = var.instance_shape_config_memory_in_gbs
        #nvmes = var.instance_shape_config_nvmes
        ocpus = var.instance_shape_config_ocpus
        #vcpus = var.instance_shape_config_vcpus
    }
    
   source_details {
        #Required
        #source_id = oci_core_image.test_image.id
        source_id= var.image_ocid
        source_type = "image"

        #Optional
        #boot_volume_size_in_gbs = var.instance_source_details_boot_volume_size_in_gbs
        #boot_volume_vpus_per_gb = var.instance_source_details_boot_volume_vpus_per_gb
        instance_source_image_filter_details {
            #Required
            compartment_id = var.compartment_id

            #Optional
            #defined_tags_filter = var.instance_source_details_instance_source_image_filter_details_defined_tags_filter
            #operating_system = var.instance_source_details_instance_source_image_filter_details_operating_system
            #operating_system_version = var.instance_source_details_instance_source_image_filter_details_operating_system_version
        }
        #kms_key_id = oci_kms_key.test_key.id
    }
    preserve_boot_volume = false
}
output "Instance-Public-IP" {
    value = oci_core_instance.test_vm_instance.*.public_ip
}
