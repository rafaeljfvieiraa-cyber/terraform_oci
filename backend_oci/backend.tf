terraform {
  backend "oci" {
    bucket_name = var.bucket_name
    namespace = var.namespace
    region = var.region 
    tenancy_ocid = var.tenancy_ocid
}
    }
    