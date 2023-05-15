echo "Removing users..."
userdel -r -f carlos
userdel -r -f debora
userdel -r -f josefina

userdel -r -f maria
userdel -r -f sebastiana
userdel -r -f amanda

userdel -r -f joao
userdel -r -f roberto
userdel -r -f rogerio

echo "Removing directories..."
rm -rf /public /adm /ven /sec

echo "Removing groups..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC


