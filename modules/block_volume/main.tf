resource "oci_core_volume" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = var.display_name
  size_in_gbs         = var.size_in_gbs
}

resource "oci_core_volume_attachment" "this" {
  instance_id     = var.instance_id
  volume_id       = oci_core_volume.this.id
  display_name    = var.display_name
  attachment_type = "ISCSI"
}
