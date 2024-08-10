# Implantação de WordPress na Azure com Terraform

Vamos configurar um site WordPress completo na Azure utilizando Terraform. Esse processo automatizado inclui o provisionamento de uma máquina virtual, a instalação do Docker, e a configuração e execução de containers separados para o WordPress e o banco de dados MySQL, garantindo que os dados sejam mantidos durante as atualizações do WordPress.

# Passos:

**Clone o Repositório:** Baixe este repositório GitHub para o seu computador.
 
**Inicialize o Terraform:** No diretório principal do projeto, abra um terminal e execute os seguintes comandos:

**terraform init:** Inicializa o Terraform e faz o download dos provedores necessários

**terraform plan:** Cria um plano de execução mostrando as modificações que serão realizadas

**terraform apply:** Implementa as modificações e provisiona os recursos na Azure

**Acesse o WordPress:** Após a conclusão da execução do Terraform, o endereço IP da VM que hospeda o WordPress será exibido na saída do comando terraform apply. Acesse esse endereço em um navegador para visualizar o site WordPress.

**Remoção da Infraestrutura:** Se não precisar mais dos recursos provisionados, você pode removê-los com o comando:
terraform destroy: Apaga todos os recursos criados pelo Terraform

# Informações:

**resource_group_name:** Nome do grupo de recursos na Azure

**location:** Região onde a VM será implantada na Azure

**admin_username:** Nome do usuário administrador da VM

**admin_password:** Senha do administrador da VM

# Notas:
Acesse o aquivo vm.tf e configure as informações de acesso da vm:

**admin_username**                  = "USUARIO"
**admin_password**                  = "SENHA"
