
# Criando VNET
resource "azurerm_virtual_network" "vnet-terraform" {
  name                = "vnet-network"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]

  tags = {
    environment = "Dev"
  }

}
# Definição da sub-rede dentro da VNet
resource "azurerm_subnet" "subnet" {
  name                 = var.resource_group_name                              
  resource_group_name  = var.resource_group_name                     
  virtual_network_name = azurerm_virtual_network.vnet-terraform.name 
  address_prefixes     = var.subnet_prefix                           
}
# Criando IP publico
resource "azurerm_public_ip" "public_ip" {
  name                = "wordpress-ip_public"
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"
  tags = {
    environment = "Dev"
  }
}
# Criação da interface de rede (NIC)
resource "azurerm_network_interface" "nic" {
  name                = "wordpress-nic"
  location            = var.location
  resource_group_name = var.resource_group_name #azurerm_resource_group.rg.name

  # Configuração de IP para a NIC
  ip_configuration {
    name                          = "wordpress-ip-config"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}