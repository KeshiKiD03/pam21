# LDAP Server
## Aaron Andal ASIX M06-ASO 2021-2022

Imatges docker al DockerHub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### PAM Containers:

 * **keshikid03/pam21:ldap** Container PAM base per practicar autenticació unix i LDAP.
   Utilitza els paquets *libpam-ldap*, *libnss-ldap*, *nscd* i *nslcd* per configurar l'accés al servei ldap
   i configura les regles PAM per permetre tant usuaris unix com usuaris LDAP. En tots dos casos es
   munta en el home un recurs tmpfs temporal. En el cs dels usuaris LDAP si el seu home no existeix
   es crea usant pam_mkhomedir.so.


### Configuració:

 * Cal instal·lar els paquets *libpam-ldap* i *libnss-ldap*.
 * Configurar el client ldap per definir com accedir al servidor ldap per defecte: */etc/ldap/ldap.conf*.
 * Configurar la resolució de noms de */etc/nsswitch* per indicar *files* i *ldap* per a le sbases de dades
   de *passwd* i *groups*.
 * Configurar /etc/nslcd.conf per indicar on s'ha de connectar per obtenir la informació LDAp, el proveïdor
   d'informació dels comptes d'usuari **IP: Information provider** i també el **AP: Authentication Provider**,
   perquè en aquest exemple LDAP proporciona tant la informació dels comptes d'usuari de xarxa com el seu password.
 * Engegar els serveis *nscd* i *nslcd*.
 * **Validació-1 Acceś al IP** en aquest punt el host PAM està configurat per accedir a la informació LDAP de
   manera que les ordres getent han de funcionar i serveixen de mecanisme de validació de si tot està correctament
   configurat o no.

---

# PAM

## @edt ASIX M06 2020-2021

* **keshikid03/pam21:ldap** host pam per practicar *PAM* amb autenticació local
  unix (*pam_unix.so*) i autenticació LDAP (amb *pam_ldap.so*). Utilitza el paquet
  *nss-pam-ldapd*. Cal configurar: *ldap.conf*, *nslcd*, *nscd*, *nsswitch*.
  L'autentitació es configura al *system-auth*.


  Atenció, cal usar en el container --privileged per poder fer els muntatges nfs.

```
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisx -p 389:389 -d keshikid03/ldap21:latest 
docker run --rm --name pam.edt.org --hostname pam.edt.org --net 2hisx --privileged -it keshikid03/pam21:ldap
```

