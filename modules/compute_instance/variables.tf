variable "availability_domain" { type = string }
variable "compartment_id"      { type = string }
variable "display_name"        { type = string }
variable "shape"               { type = string }
variable "ocpus"               { type = number }
variable "memory_in_gbs"       { type = number }
variable "subnet_id"           { type = string }
variable "assign_public_ip"    { type = bool }
variable "ssh_public_key_path" { type = string }
variable "image_id"            { type = string }
variable "hostname_label"      { type = string }
variable "user_data"           { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}
variable "instance_private_ip" {
  type    = string
  default = null
}