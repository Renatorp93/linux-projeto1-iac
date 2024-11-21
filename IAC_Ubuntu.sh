#!/bin/bash

#Versão1: Script para realizar a criação de diretórios, grupos e usuários em um servidor

echo "Criando diretórios...."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Finalizado a criação dos diretórios!!!"

echo "Criando grupos de usuários....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Finalizado a criação dos grupos!!!!"


echo "Criando usuários....."

#usuários pertencentes ao grupo GRP_ADM
useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e

#usuários pertencentes ao grupo GRP_VEN
useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e

#usuário pertencentes ao grupo GRP_SEC
useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Finalizado a criação dos usuários!!!!"

echo "Dando permissões para os diretórios....."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo "Finalizado o permissionamento dos diretórios!!!"
