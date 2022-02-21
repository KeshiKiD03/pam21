-----------
-- PAM 21 --
-----------

<!---
# Plantilla H1
## Plantilla H2
### Plantilla H3
-->
<!--- <img src="https://phoneky.co.uk/thumbs/screensavers/down/original/linux_3rj131p8.gif" />
-->

⭐️ **PLANTILLA** ⭐️

| 🔥PLANTILLA TALBA❗🔥 | 
| ------------- |
| *Plantilla* |


--------------------------------------------------------------------------------

⭐️ **¿Que es el PAM?** ⭐️





















--------------------------------------------------------------------------------

⭐️ **1. El modelo de funcionamiento de PAM** ⭐️

⭐️ **Identificar las aplicaciones que utilizan PAM** ⭐️

⭐️ **Identificar los archivos de configuración de PAM de las aplicaciones y entender el funcionamiento** ⭐️

⭐️ **Elementos de la configuración: type, control, module y options. Identificar la funcionalidad de cada tipo** ⭐️

⭐️ **Entender el funcionamiento de los controles básicos: requisito, requerimiento, sufficiente, optional, include y stack. identificar los demás controles avanzados**

⭐️ **Consultar la ubicación y el man de los módulos pam_<nombre>.so utilizados en las configuraciones PAM** ⭐️

--------------------------------------------------------------------------------

⭐️ **2. Ejemplos de configuraciones PAM básicas** ⭐️

⭐️ **Usando la aplicación chfn y su configuración PAM identificar claramente los types auth y account** ⭐️

⭐️ **Utilizar el módulo pam_echo.so para realizar el seguimiento de la configuración PAM** ⭐️

⭐️ **Utilizar journalctl para observar la evaluación de los módulos PAM usados ​​en las configuraciones** ⭐️

⭐️ **También con chfn practicar las combinaciones de los controles básicos y de los módulos: pam:permit.so, pam_deny.so, pam_unix.so, pam_suceed_if y pam_rootok.so** ⭐️

--------------------------------------------------------------------------------

⭐️ **3. Argumentos de los módulos (más usuales)** ⭐️

⭐️ **Identificar los argumentos que se pueden utilizar en los módulos y probarlos** ⭐️

⭐️ **Opciones típicas: nullok, try_first_pass, use_first_pass, etc** ⭐️

⭐️ **Establecer condiciones con pam_succeed_if según sea el uid, login, etc** ⭐️

⭐️ **Ejemplos de configuraciones del type: password** ⭐️

⭐️ **Redefinir la política usada para modificar la contraseña. Generar un nuevo PAM passwd** ⭐️

⭐️ **Practicar las opciones disponibles de pam_pwquality.so y pam_cracklib.so** ⭐️

--------------------------------------------------------------------------------

⭐️ **5. Ejemplos de configuraciones de los types: account y session:** ⭐️

⭐️ **Establecer limitaciones de acceso según el día y hora de la semana con el módulo pam_time.so** ⭐️

⭐️ **Crear el directorio de usuarios automáticamente con pam_mkhomedir.so** ⭐️

⭐️ **Montar / Desmontar automáticamente recursos de disco (locales, tmpfs, nfs, samba, etc) al iniciar / cerrar sesión, usando pam_mount.so** ⭐️

⭐️ **Configuraciones de pam_mount globales para todos los usuarios y/o configuraciones particulares para un usuario concreto** ⭐️

--------------------------------------------------------------------------------

⭐️ **6. Ejemplos de funcionamiento de los controles include y substack** ⭐️

--------------------------------------------------------------------------------

⭐️ **7. Configuración global: system-auth** ⭐️

⭐️ **Examinar el contenido de la configuración actual de system-auth** ⭐️

⭐️ **Manipulación del link de system-auth, system-auth-ac y creación de versiones de configuración propias** ⭐️

⭐️ **Consulta de la configuración actual de authconfig** ⭐️

⭐️ **Generar una nueva configuración de autenticación con authconfig-tui** ⭐️

--------------------------------------------------------------------------------

⭐️ **8. Práctica: PAM + LDAP, configuración conjunta** ⭐️

⭐️ **Implementar un sistema de autenticación PAM+LDAP usando el paquete: nss-pam-ldapd** ⭐️

⭐️ **Examinar el software instalado: ejecutables, documentación y servicios. Servicios nscd y nslcd** ⭐️

⭐️ **Configuración del acceso al servidor LDAP propio usando el demonio nslcd** ⭐️

⭐️ **Configurar el base search y los criterios de búsqueda de usuarios y grupos en el DIT LDAP** ⭐️

⭐️ **Configurar la resolución de nombres vía nsswitch.conf indicando la precedencia de resoluciones para los servicios de: passwd, groups y hosts** ⭐️

⭐️ **Configurar un servicio basándose en la resolución ldap, por ejemplo chfn** ⭐️

⭐️ **Configurar el sistema completo para usar autenticación unix + ldap** ⭐️

--------------------------------------------------------------------------------

⭐️ **9. Monitorizar el funcionamiento de la configuración PAM + LDAP** ⭐️

⭐️ **Utilización del comando getent para examinar la resolución de passwd, groups y hosts según la configuración actual** ⭐️

⭐️ **Usar wireshark para monitorizar el seguimiento de las comunicaciones realizadas para proceder a la autenticación del usuario.** ⭐️

⭐️ **Usar journalctl para monitorizar el seguimiento de las comunicaciones realizadas para proceder a la autenticación del usuario.** ⭐️

⭐️ **Ampliar la base de datos LDAP con usuarios y grupos y declarar los memberUid de los grupos.** ⭐️

--------------------------------------------------------------------------------

⭐️ **10. Prácticas** ⭐️

⭐️ **Crear una aplicación python que utilice el módulo python-PAM para autenticar a el usuario que quiere utilizarla** ⭐️

⭐️ **Crear en python un módulo PAM tipo pam_quiz.so que realiza preguntas a al azar como mecanismo de autenticación** ⭐️

⭐️ **Implementar: LDAP + NFS + PAM. Autenticar usuarios locales y de red (LDAP) con el montaje automático de sus hombres de un servidor NFS** ⭐️

⭐️ **Implementar: LDAP+NFS+SAMBA. Autenticar usuarios locales y de red (LDAP) con el montaje automático de sus hombres de un servidor SAMBA** ⭐️






