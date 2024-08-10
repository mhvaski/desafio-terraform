# Configuração do Terraform para especificar a versão do provedor "azurerm" da HashiCorp.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.114.0"
    }
  }
}
# Configuração do provedor "azurerm" com as credenciais necessárias para se autenticar na Azure.
provider "azurerm" {
  features {
    
  }

}