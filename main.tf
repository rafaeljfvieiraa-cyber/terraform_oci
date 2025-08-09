#### Esse é o "Core" da stack, tendo o papel de criar uma instância de computação na OCI.

    
module "create_instance" {
  source = "./modules/compute_instance"

  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = "TERRAFORM-TEST"
  shape               = var.shape
  ocpus               = 2
  memory_in_gbs       = 16
  subnet_id           = var.subnet_id
  assign_public_ip    = var.assign_public_ip
  ssh_public_key_path = var.ssh_public_key_path
  image_id            = var.image_id_oraclelinux
  hostname_label      = "TERRAFORM-TEST"
  user_data           = var.user_data
  tags = {
    Ambiente = "Prod"
  }
}

module "data_volume" {
  source              = "./modules/block_volume"
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  display_name        = "DT_DISK_TEST"
  size_in_gbs         = 155
  instance_id         = module.create_instance.instance_id
}

#### aba de retorno das informações da instância e do volume de dados criados

output "volume_id" {
  description = "OCID do volume de dados criado."
  value       = module.data_volume.volume_id

}
output "private_ip" {
  description = "Endereço IP privado da instância."
  value       = module.create_instance.instance_private_ip

}
output "instance_id" {
  description = "OCID da instância criada."
  value       = module.create_instance.instance_id
}

