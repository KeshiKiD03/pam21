# PAM

## @edt ASIX M06 2020-2021


Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **edtasixm06/pam21:base** : Host pam per practicar *PAM* amb chfn i system-auth. Es tracten els types
  auth i session amb chfn practicant el significat de optional, sufficient, required i requisite i el 
  mòdul pam_unix.so. El type password amb *pwquality*. El type account amb *pam_time.so*. 
  El type sessions amb *pam_mkhomedir.so* i *pam_mount.so*. Es practica *pam_mount.so* amb un muntatge tmpfs
  i un de nfs4.

  Atenció, cal usar en el container --privileged per poder fer els muntatges nfs.

  ```
  docker run --rm --name pam.edt.org --hostname pam.edt.org --net hisx2 --privileged -it keshikid03/pam21:base
  ```
  
  * **edtasixm06/pam21:pam_time.so** : Host PAM per practica *PAM* amb chfn, amb la pràctica de d'inici de sessió d'usuaris per fer chfn.
  
  * **edtasixm06/pam21:pam_mount.so** : Host PAM per practica muntatge temporal del Home, també muntatge tmpfs i un de nfs4.
