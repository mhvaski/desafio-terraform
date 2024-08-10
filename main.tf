
# Criação do grupo de recursos
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name 
  location = var.location
}

# Criação da rede virtual e sub-rede usando o módulo network
module "network" {
  source              = "./network"                        
  resource_group_name = azurerm_resource_group.rg.name     
  location            = azurerm_resource_group.rg.location 
  address_space       = var.address_space
  subnet_prefix       = var.subnet_prefix
  snet_name           = var.resource_group_name
}

# Criação da máquina viterrartual usando o módulo vm
module "vm" {
  source               = "./vm"                  
  resource_group_name  = var.resource_group_name 
  location             = var.location            
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  network_interface_id = module.network.network_interface_id
}

# Saida ip
output "public_ip" {
  value = module.network.public_ip
}

