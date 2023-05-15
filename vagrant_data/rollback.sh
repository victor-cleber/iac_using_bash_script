echo "removing users..."
userdel -r -f carlos
userdel -r -f debora
userdel -r -f josefina

userdel -r -f maria
userdel -r -f sebastiana
userdel -r -f amanda

userdel -r -f joao
userdel -r -f roberto
userdel -r -f rogerio


echo "removing directories..."
rm -rf /public /adm /ven /sec

echo "removing groups..."
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC


