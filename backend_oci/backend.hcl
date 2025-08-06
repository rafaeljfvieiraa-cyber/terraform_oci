#### Esse arquivo é o backend do terraform para a OCI, armazenando o estado do Terraform no Object Storage da OCI.
#### Certifique-se de que as variáveis necessárias estão definidas no arquivo `variables.tf` e que o arquivo `terraform.tfvars` contém os valores corretos.

terraform {
  backend "oci" {
    bucket_name = "terraform-state"
    namespace = "ax7ghg0vcvtx"
    region = "sa-vinhedo-1" 
    tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaag6mpx4jqae3lxxvyg4z2fgtmmklvto4fjikffuqrnkqkhk2dyyya"
}
    }
    