# Remover os espaços no editor de texto
#! /bin/bash

# Atualizando o sistema
print("Comecando a atualizacao")
time 5
apt update && apt upgrade -y && apt install curl -y && apt autoremove -y

# Instalando o Docker
curl -sSf https://get.docker.com | bash

# Configurando o Docker para deixar o usuario padrao com permissao pra usar o docker
usermod -aG docker marco/kerberus


docker run -d -p 443:443 --name openvas mikesplain/openvas

echo "Processo concluido, baby"
