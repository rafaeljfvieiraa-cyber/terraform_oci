variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "availability_domain" {}
variable "compartment_id" {}
variable "subnet_id" {}
variable "image_id_ubuntu" {}
variable "image_id_oraclelinux" {}
variable "image_id_windows" {}
variable "ssh_public_key_path" {
  description = "/home/jrafael/.ssh/id_rsa.pub"
}
variable "assign_public_ip" {
  description = "Atribuir um IP público à instância (true/false)."
  type        = bool
  default     = false # É bom ter um default, mas o valor do terraform.tfvars sobrescreverá este.
}
variable "shape" {
  description = "Shape da instância."
  type        = string
  default     = "VM.Standard.E4.Flex"  
}
variable "user_data" {
  description = "/terraform/create_instancesoci/scripts/bootstrap.sh"
  type        = string
  default     = "" # Pode ser um caminho para um script, ou vazio se não for necessário.
  
}
variable "namespace" {}
variable "bucket_name" {}