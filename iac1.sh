#!/bin/bash
echo "iniciando Script..."

mkdir -m 777 /publico 
mkdir -m 770 /adm
mkdir -m 770 /ven
mkdir -m 770 /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Script finalizado..."
