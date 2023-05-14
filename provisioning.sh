#!/bin/bash

echo "Creating directories ..."
mkdir /public /adm /ven /sec

echo"The user root will be the owner of all created directories"
chown root /public
chown root /adm 
chown root /ven
chown root /sec

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


echo "Adding users to it respective groups..."
usermod -G GRP_ADM carlos, debora, josefina
usermod -G GRP_VEN maria, sebastiana, amanda
usermod -G GRP_SEC joao, roberto, rogerio

#All users will have full permissions on the public directory
chmod o=rx /public

#Users of each group will have full permissions within the respective directory 
#referring to the department they are part of
chmod g+wrx /adm
chmod g+wrx /ven
chmod g+wrx /sec

#The user cannot read, write or execute permissions on directories of departments that they do not belong to
chmod o-wrx /adm
chmod o-wrx /ven
chmod o-wrx /sec

