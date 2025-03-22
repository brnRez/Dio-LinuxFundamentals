#!/bin/bash

echo "Criando os diretorios" 
mkdir -p /publico /adm /ven /sec


echo "Criando os grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios e os atribuindo aos grupos"

for user in carlos maria joao; do
	useradd -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM $user
done

for user in debora sebastiana roberto; do
	useradd -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN $user	
done

for user in josefina amanda rogerio; do
	useradd -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC $user	
done

echo "Definindo permissoes dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm /ven /sec
chmod 777 /publico

echo "Script Finalizado, usuarios criados!"
