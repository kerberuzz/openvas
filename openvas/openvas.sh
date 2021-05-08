#! /bin/bash
# Lembre-se de rodar o script como root

print("Comecando a atualizacao")
sleep 3
apt update && apt upgrade -y && apt install curl -y && apt autoremove -y

# Instalando o Docker
curl -sSf https://get.docker.com | bash

# Configurando o Docker para deixar o usuario padrao com permissao pra usar o docker
user= echo "Informe seu usuario: "
group= echo "Informe seu grupo: "
usermod -aG docker $user/$group
print("Voce tem permissao para rodar os comandos do Docker")
sleep 3

# Criando o container com o openvas na porta 443
docker run -d -p 443:443 --name openvas mikesplain/openvas

# Procedimento concluido
echo "Processo concluido, baby"
