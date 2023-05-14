#!/bin/bash

echo "Creating directories ..."
sudo mkdir /public /adm /ven /sec

#echo"The user root will be the owner of all created directories"
#chown root /public
#chown root /adm 
#chown root /ven
#chown root /sec

echo "Creating groups ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users ..."
sudo useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
sudo passwd carlos -e
sudo useradd debora  -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
sudo passwd debora -e
sudo useradd josefina  -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
sudo passwd josefina -e

sudo useradd maria -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
sudo passwd maria -e
sudo useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
sudo passwd sebastiana -e
sudo useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
sudo passwd amanda -e

sudo useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
sudo passwd joao -e
sudo useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
sudo passwd roberto -e
sudo useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
sudo passwd rogerio -e


#All users will have full permissions on the public directory
sudo chmod o+wrx /public

#Users of each group will have full permissions within the respective directory 
#referring to the department they are part of
sudo chmod g+wrx /adm
sudo chmod g+wrx /ven
sudo chmod g+wrx /sec

#The user cannot read, write or execute permissions on directories of departments that they do not belong to
sudo chmod o-wrx /adm
sudo chmod o-wrx /ven
sudo chmod o-wrx /sec

echo "Fixing passwd: Authentication token manipulation error"
sudo reboot