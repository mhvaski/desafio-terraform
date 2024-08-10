# Saída do ID da sub-rede criada

output "network_interface_id" {
  value = azurerm_network_interface.nic.id
}
# Saida do Ip publico
output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}