# Seu terraform.tfvars atual
tenancy_ocid        = "ocid1.tenancy.oc1..aaaaaaaag6mpx4jqae3lxxvyg4z2fgtmmklvto4fjikffuqrnkqkhk2dyyya"
user_ocid           = "ocid1.user.oc1..aaaaaaaampuyeks3mo2jg7r3zlzqa4sqtevwbpce5bg7c6hn3s7zzg2x4g4q"
fingerprint         = "ca:ab:50:f4:79:ef:03:18:09:38:25:22:6f:55:8c:dc"
private_key_path    = "/home/jrafael/.oci/oci_api_key.pem"
region              = "sa-vinhedo-1"

# Variáveis da instância
availability_domain = "yltu:SA-VINHEDO-1-AD-1"
compartment_id      = "ocid1.compartment.oc1..aaaaaaaaizaq5jhasi5o7x3xt423ds4qj3vd6gjhjwqo3qnanu6veox3k4sq" # Instâncias produtivas
subnet_id           = "ocid1.subnet.oc1.sa-vinhedo-1.aaaaaaaa33mpuxui6tuxzqw7on7o2pen46fn7sgantoxcewmerbpr3ha63nq" # Subnet privada 1
image_id_ubuntu = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaagswc6g5wbhw2iim24qq46dfpjrianaomkupmfiuiol3ztp7njw6a" # Ubuntu image 24.04 - Minimal
image_id_oraclelinux = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaa2etgeuvxkfrllvaufm5wd7joqu3rdaem3ac42dik6ihjmbuoitgq" # Oracle Linux 9 - Minimal
image_id_windows = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaalw7tlsnpm3m52uk3bbqa5afpx7hacmat5yrjq7yclgqswqk26jdq" # Windows server 2022 - Standard 

# ADICIONE ESTA LINHA:
ssh_public_key_path = "/home/jrafael/.ssh/id_rsa.pub" # <--- chave privada ssh