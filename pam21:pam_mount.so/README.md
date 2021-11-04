# PAM

## @edt ASIX M06 2020-2021


Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **keshikid03/pam21:pam_mount.so** : Host pam per practicar *PAM* amb chfn i system-auth. Es tracten els types
  auth i session amb chfn practicant el significat de optional, sufficient, required i requisite i el 
  mòdul pam_unix.so. El type password amb *pwquality*. El type account amb *pam_time.so*. 
  El type sessions amb *pam_mkhomedir.so* i *pam_mount.so*. Es practica *pam_mount.so* amb un muntatge tmpfs
  i un de nfs4.

  Atenció, cal usar en el container --privileged per poder fer els muntatges nfs.

  ```
docker run --rm --name pam.edt.org -h pam.edt.org --net 2hisx --privileged -it keshikid03/pam21:pam_mount.so

  ```
  
# PAM

--> La seguretat de las aplicacions s'evita mitjançant pam que funciona de forma modular(es poden posra o no posar els moduls)

--> Has de configurar els programes perque utilitzin el pam
 
```
docker run --rm --name pam.edt.org -h pam.edt.org --network 2hisix -it keshikid03/pam21:base /bin/bash
```

## The PAM configuration file for the Shadow `chfn' service
**-auth    required        pam_unix.so**
**-account sufficient      pam_permit.so**

##authentification

**authentication es demostrar que si eres pere seas pere(por ejemplo sabiendo sus credenciales/otras opciones)**

**authoritzation (no es en pam(se parece a auth)) es una vez sabemos que eres pere si tenemos los permisos para hacer lo que queramos)**

##account

**comprova si esta caducada la compte//si esta fora horari**

##password

**regles que tenen que veure a com establir/modificar la password/metode d'autetificació**

##session

**cosas a hacer antes de iniciar o cerrar la session de usuario**

##control:*

##optional*

**si va be o va malament no te importancia a menys que sigui el unic modul del stack**

##sufficient*

**si accepta continua ja que va be a menys que h hagi un required abans//si fracasa se ignora y continua con la siguiente autentificacion**

##required*

**si falla donara finalment fallo**

##requisite*

**si falla donara fala esta relacionat amb el primer required/requisite**

para iniciar con usuarios ldap primero entrar con un usuario local

-->Al entrar con los usuarios creados (unix01-03) debemos poner los nombres bien para no liarnos

-->instalaremos pam mount//se carga en auth(autentifica) y en session(fa el montatge) pma_mount.xml.conf create dir 100MB en la home 

--> instalar pam ldap y nss y mirar que se confgura al hacer interactivamente

## EJERCICIO 8 PAM MOUNT.SO

1.A tots els usuaris es munta dins el seu home un recurs anomenat tmp de 100M
corresponent a un ramdisk tmpfs.
```
<volume user="test" 
	fstype="tmpfs" 
	mountpoint="/home/%(USER)/tmp"
	options="size=100M,uid=%(USER),mode=0700" />
```
2. Només a l’usuari unix01 es munta dins el seu home un recurs anomenat tmp de
200M corresponent a un ramdisk tmpfs.

```
<volume user="test" 
	fstype="tmpfs" 
	mountpoint="/home/%(USER)/tmp"
	options="size=100M,uid=%(USER),mode=0700" />

```
3. A l’usuari unix02 se li munta dins el home un recurs NFS de xarxa.
*Nota* Creeu un recurs de xarxa NFS per exemple /usr/share/docs exportat per
NFS.
```
<volume user="unix02" 
	fstype="nfs" 
	server="172.18.0.1" 
	path="/mnt/nfs_share" 
	mountpoint="/home/%(USER)/tmp" />
```

4. En el HOST (Instalar NFS-KERNEL-SERVER)
```
sudo apt-get update
```

```
sudo apt-get install nfs-kernel-server
```

```
sudo mkdir -p /mnt/nfs_share
```

```
sudo chown -R nobody:nogroup /mnt/nfs_share
```

```
sudo chmod 777 /mnt/nfs_share/
```

```
sudo vim /etc/exports
```

```
/mnt/nfs_share 172.19.0.0/16(rw,sync,no_subtree_check) # Añadir esta línea
```

```
sudo exportfs -a
```

```
sudo systemctl restart nfs-kernel-server
```

```
sudo ufw allow from 172.19.0.0/16 to any port nfs
```

Rules updated

```
sudo ufw enable
```

Firewall is active and enabled on system startup

```
sudo ufw status
```

Status: active

To                         Action      From
--                         ------      ----
2049                       ALLOW       172.19.0.0/16   

5. COMPROBACIÓN EN LA MÁQUINA VIRTUAL (INSTALAR NFS-COMMON DEJARLO EN EL DOCKERFILE)
```
su - unix01 o unix02
```
```
mount | grep tmpfs
```
```
mount | grep nfs
```
