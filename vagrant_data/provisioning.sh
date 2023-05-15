#!/bin/bash

echo "Creating directories..."
mkdir /public /adm /ven /sec

#echo"The user root will be the owner of all created directories"
#chown root /public
#chown root /adm 
#chown root /ven
#chown root /sec

echo "Creating groups..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Changing directory group owner..."
chown :GRP_ADM  /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

echo "Creating users..."
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_ADM carlos
passwd carlos -e > /dev/null
useradd debora  -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_ADM debora
passwd debora -e > /dev/null
useradd josefina  -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_ADM josefina
passwd josefina -e > /dev/null

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_VEN maria
passwd maria -e > /dev/null
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) 
usermod -G GRP_VEN sebastiana
passwd sebastiana -e > /dev/null
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_VEN amanda
passwd amanda -e > /dev/null

useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_SEC joao
passwd joao -e > /dev/null
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_SEC roberto
passwd roberto -e > /dev/null
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123)
usermod -G GRP_SEC rogerio
passwd rogerio -e > /dev/null


#All users will have full permissions on the public directory
echo "Applying permissions into the public directory..."
chmod o+wrx /public

#Users of each group will have full permissions within the respective directory 
#referring to the department they are part of
echo "Applying permissions into the groups..."
chmod g+wrx /adm
chmod g+wrx /ven
chmod g+wrx /sec

#The user cannot read, write or execute permissions on directories of departments that they do not belong to
chmod o-wrx /adm
chmod o-wrx /ven
chmod o-wrx /sec

echo "Rebooting to fix "passwd: Authentication token manipulation" error"...
reboot