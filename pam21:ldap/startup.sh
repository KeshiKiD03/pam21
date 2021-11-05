#! /bin/bash

# Creacio Usuaris
useradd -m -s /bin/bash unix01 # -m crea directorio y -s shell
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03

# Posar Password
echo -e "unix01\nunix01\n" | passwd unix01
echo -e "unix02\nunix02\n" | passwd unix02
echo -e "unix03\nunix03\n" | passwd unix03

# Copiar arxius necesaris
cp /opt/docker/ldap.conf /etc/ldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth

# Engegar dimonis necesaris
/usr/sbin/nscd
/usr/sbin/nslcd

# Interactiu
/bin/bash
