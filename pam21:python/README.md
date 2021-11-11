# PAM

## @edt ASIX M06 2020-2021

* **keshikid03/pam21:python** host pam basat en pam21:base per practicar crear una aplicació PAM Aware i per crear el nostre propi mòdul de PAM.

  ```
  $ docker run --rm --name pam.edt.org --hostname pam.edt.org --net 2hisix -it keshikid03/pam21:python
 
  # Test pam_pyhton.so pam_mates.py
  su - unix01
  chfn

  # Test pamwarare.py
  python3 /opt/docker/pamaware.py
 
  ```

