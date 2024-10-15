# 📘Práctica 3.Instalar, configurar y securizar phpMyAdmin
!!! note "Objetivos"
    - Instalar, asegurar y configurar phpMyAdmin en un servidor Ubuntu
    - Proteger PhpMyAdmin contra accesos no autorizados
    - Automatizar la instalación y configuración de phpMyAdmin mediante scripts de Bash

## Instalar PHP
Instalar PHP para que luego se pueda ejecutar bien el phpmyadmin:
     ```bash
        sudo apt install php libapache2-mod-php
     ```

## Instalación de phpMyAdmin
Abre tu terminal y ejecuta el siguiente comando para instalar phpMyAdmin
     ```bash
        sudo apt update
        sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl
     ```

### Configurar phpMyAdmin para Apache
Durante la instalación se te pedirá que elijas el servidor web.

- Seleccionar `Apache`

![Seleccionar Servidor Web](image-31.png)

### Habilitar el archivo de configuración de phpMyAdmin
Ejecuta el siguiente comando para habilitar el archivo.
    ```bash
        sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
        sudo a2enconf phpmyadmin
    ```

![Habilitando archivo conf PHP](image-34.png)

### Habilitar la extensión mbstring y reiniciar Apache
Ejecuta el comando para habilitar la extensión `mbstring`
    ```bash
        sudo phpenmod mbstring
    ```

![Extensión mbstring](image-35.png)

- Reiniciar el servicio `Apache`
    ```bash
        sudo systemctl restart apache2
    ```

### Configurar la base de datos para phpMyAdmin
Durante la instalación de phpMyAdmin,pedirá que configuremos una `base de datos` para `phpMyAdmin` con `dbconfig-common`
![dbconfig-common](image-32.png)

- Definimos la contraseña

![Contraseña phpadmin SQL](image-33.png)

## Configuración del Acceso por Contraseña para la Cuenta Root de MySQL
Iniciar sesión en MySQL como root
    ```bash
        sudo mysql
    ```
Cambiar el método de autenticación a mysql_native_password:
    ```bash
        ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Root_1234';
        FLUSH PRIVILEGES;
    ```

![USUARIO ROOT](image-36.png)

![FLUSH PRIVILEGES](image-37.png)

Otorgar privilegios a ROOT
    ```bash
        GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
        FLUSH PRIVILEGES;
    ```

![CEDER PERMISOS A ROOT](image-39.png)


- Comprobar usuarios de MySQL

![Usuarios SQL](image-38.png)

## Configuración del Acceso por Contraseña para un Usuario Dedicado de MySQL
- Crear un nuevo usuario con una contraseña segura:
    ```bash
        CREATE USER 'phpmyadmin_max'@'localhost' IDENTIFIED BY 'Root_1234';
    ```

- Otorgar privilegios al nuevo usuario
    ```bash
        GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin_max'@'localhost' WITH GRANT OPTION;
        FLUSH PRIVILEGES;
    ```
![Creación usuario para php](image-40.png)

- Comprobar usuarios de MySQL
  
  ![Usuarios MYSQL nuevos](image-41.png)

## Securizando Instancia de phpMyAdmin
Habilitar sobrescrituras de archivos `.htaccess` en `Apache`:

- Edita el archivo de configuración de `phpMyAdmin`:
     ```bash
        sudo nano /etc/apache2/conf-available/phpmyadmin.conf
     ```
Asegúrate de que la directiva `AllowOverride` está configurada en `All`

![Override configurado](image-42.png)

- Crear un archivo .htaccess en el directorio de phpMyAdmin:
     ```bash
        sudo nano /usr/share/phpmyadmin/.htaccess
     ```

![Archiv .htaccess](image-43.png)

- Agrega las siguientes líneas para habilitar la autenticación básica
  
     ```bash
        AuthType Basic
        AuthName "Acceso Restringido"
        AuthUserFile /etc/phpmyadmin/.htpasswd
        Require valid-user
     ```

![Configuración .htaccess](image-44.png)

- Crear un archivo .htpasswd para almacenar las credenciales
     ```bash
        sudo htpasswd -c /etc/phpmyadmin/.htpasswd phpmyadmin_max
     ```
![Usuario configurado con contraseña](image-45.png)

## Comprobaciones
- Acceso a http://IP/phpmyadmin
  
![Primera verificación de seguridad](image-46.png)

![Segunda verificación de seguridad](image-47.png)