#! /bin/bash
# -m crea directorio y -s shell
useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
useradd -m -s /bin/bash pere
useradd -m -s /bin/bash marta
# Posa la contrasenya
echo -e "unix01\nunix01" | passwd unix01 
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03
echo -e "pere\npere" | passwd pere
echo -e "marta\nmarta" | passwd marta


cp /opt/docker/login.defs /etc/login.defs

/bin/bash
