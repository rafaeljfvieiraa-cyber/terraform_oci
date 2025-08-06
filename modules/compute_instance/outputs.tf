output "instance_id" {
  value = oci_core_instance.this.id
}

output "public_ip" {
  value = oci_core_instance.this.public_ip
}
output "instance_private_ip" {
  description = "Endereço IP privado da instância."
  value       = oci_core_instance.this.private_ip
  }
