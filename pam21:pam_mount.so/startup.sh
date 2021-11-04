#! /bin/bash

useradd -m -s /bin/bash unix01 # -m crea directorio y -s shell
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
# Posa la contrasenya
echo -e "unix02\nunix02" | passwd unix02
# Posa la contrasenya
echo -e "unix03\nunix03" | passwd unix03
# Posa la contrasenya # sense --stdin por debian echo -e por el control

cp /opt/docker/login.defs /etc/login.defs
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml

/bin/bash
