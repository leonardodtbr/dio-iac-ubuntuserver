#!/bin/bash

#Apagar usuários
sudo userdel -r -f carlos
sudo userdel -r -f maria
sudo userdel -r -f joao

sudo userdel -r -f debora
sudo userdel -r -f sebastiana
sudo userdel -r -f roberto

sudo userdel -r -f josefina
sudo userdel -r -f amanda
sudo userdel -r -f rogerio

#Apagar grupos
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC

#Apagar diretorios
sudo rm -r -f /publico
sudo rm -r -f /adm
sudo rm -r -f /ven
sudo rm -r -f /sec

#Criar os diretórios
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

#Criar os grupos
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

#Certificar-se de que o usuário root é o dono de todos os diretorios criados
sudo chown root:root /publico
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

#Permissão total dos usuários ao diretório público
sudo chmod 777 /publico

#Permissões total grupos aos respectivos diretórios e permissão zero aos outros
sudo chmod 770 /adm/
sudo chmod 770 /ven/
sudo chmod 770 /sec/

#Criar os usuários
sudo useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Carlos123)
sudo useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Maria123)
sudo useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Joao123)

sudo useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd Debora123)
sudo useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Sebastiana123)
sudo useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Roberto123)

sudo useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Josefina123)
sudo useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Amanda123)
sudo useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd Rogerio123)

#Atribuir usuários aos grupos
sudo usermod -G GRP_ADM carlos
sudo usermod -G GRP_ADM maria
sudo usermod -G GRP_ADM joao

sudo usermod -G GRP_VEN debora
sudo usermod -G GRP_VEN sebastiana
sudo usermod -G GRP_VEN roberto

sudo usermod -G GRP_SEC josefina
sudo usermod -G GRP_SEC amanda
sudo usermod -G GRP_SEC rogerio
