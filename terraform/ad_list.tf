
variable user_ocid{
default="ocid1.user.oc1..aaaaaaaa7s3oovhot7hqteblpo6z6thcsfxflw5vrl3awtokhf7j5pacaw5a"
}
variable tenancy_ocid {
    default="ocid1.tenancy.oc1..aaaaaaaasg7dmeaivai6jirpcbl23ms3z4aohftxghilvru5b2eceujefw6a"

}
variable fingerprint {
default="bd:12:de:79:26:ed:29:0d:56:8b:69:c3:34:78:13:a2"
}
variable private_key_path {
default="mykey.pem"
}
variable region{
default="us-ashburn-1"
}




provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid
  fingerprint = var.fingerprint
  private_key_path = var.private_key_path
  region = var.region
}

data "oci_identity_availability_domains" "ads" {
    #Required
    compartment_id = var.tenancy_ocid
}


output "showADs" {
    value = data.oci_identity_availability_domains.ads.availability_domains[*].name
}