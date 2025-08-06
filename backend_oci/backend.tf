#### Esse arquivo é o backend do terraform para a OCI, armazenando o estado do Terraform no Object Storage da OCI.
#### Certifique-se de que as variáveis necessárias estão definidas no arquivo `variables.tf` e que o arquivo `terraform.tfvars` contém os valores corretos.

terraform {
  backend "oci" {
    bucket_name = var.bucket_name
    namespace = var.namespace
    region = var.region 
    tenancy_ocid = var.tenancy_ocid
}
    }
    