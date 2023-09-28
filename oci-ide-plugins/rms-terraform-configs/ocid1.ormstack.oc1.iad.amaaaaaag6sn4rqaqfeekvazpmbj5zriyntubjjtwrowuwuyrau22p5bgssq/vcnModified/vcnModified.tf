// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.


variable "compartment_ocid" {}
variable "region" {}


provider "oci" {

  region           = var.region
}

resource "oci_core_vcn" "testvcn1" {
  cidr_block     = "10.1.0.0/16"
  dns_label      = "testvcn1"
  compartment_id = var.compartment_ocid
  display_name   = "MyDemoVCN"
}


resource "oci_core_subnet" "test_subnet" {
    #Required
    cidr_block = "10.1.0.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.testvcn1.id

    #Optional
  #  availability_domain = var.subnet_availability_domain
  #  defined_tags = {"Operations.CostCenter"= "42"}
  #  dhcp_options_id = oci_core_dhcp_options.test_dhcp_options.id
    display_name = "demosubnet1"
    dns_label = "demosubnet1"
  #  freeform_tags = {"Department"= "Finance"}
  #  ipv6cidr_block = var.subnet_ipv6cidr_block
  #  prohibit_public_ip_on_vnic = var.subnet_prohibit_public_ip_on_vnic
  #  route_table_id = oci_core_route_table.test_route_table.id
  #  security_list_ids = var.subnet_security_list_ids
}

