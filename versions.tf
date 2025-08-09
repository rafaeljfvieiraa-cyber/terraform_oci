terraform {
  required_version = ">= 1.3.0"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }
}

terraform {
  backend "oci" {
    bucket = "terraform-state"
    namespace = "ax7ghg0vcvtx"
    region = "sa-vinhedo-1" 
    tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaag6mpx4jqae3lxxvyg4z2fgtmmklvto4fjikffuqrnkqkhk2dyyya"
}
}