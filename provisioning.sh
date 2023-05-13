#!/bin/bash

echo "Creating directories ..."

mkdir /public /adm /ven /sec

echo "Creating groups ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users ..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora  -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd josefina  -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd maria -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
