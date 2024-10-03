# 📘 Práctica 3: Despliegue de una página estática con MkDocs
En esta práctica aprenderás a desplegar una página web estática utilizando **MkDocs** y **GitHub Pages**. Siguiendo los pasos detallados a continuación, crearás y publicarás tu página.
!!! note "Objetivos"
    - Aprender a utilizar MarkDown
    - Aprender a utilizar MkDocs
    - Aprender a utilizar GitHub Pages
    - Desplegar una página web estática




---

## ⚒ Instalación de herramientas necesarias

Antes de comenzar, asegúrate de tener instaladas las siguientes herramientas en tu sistema:

1. **Python**: Instálalo desde [python.org](https://www.python.org/downloads/) o ejecutando por terminal:
   
    ```bash
        pip install mkdocs
    ```

2. **MkDocs**: Para instalar MkDocs, abre una terminal y ejecuta:
   
    ```bash
        pip install mkdocs
    ```
## ⚙ Creación página estática con MkDocs

Antes de comenzar, asegúrate de tener instaladas las siguientes herramientas en tu sistema:

1. Para crear un nuevo proyecto de **MkDocs**, usa los siguientes comandos:
    - Crea un nuevo proyecto llamado 'web' con la estructura por defecto de MkDocs.
    ```bash
        mkdocs new web
    ```
    Se creará una carpeta con el nombre del proyecto, dentro de la cual se generará una estructura que incluye un archivo `mkdocs.yml` para la configuración, junto con una carpeta `docs` que almacenará los archivos en formato Markdown destinados a la documentación.
    - Cambia el directorio actual al que acabas de crear para comenzar a trabajar en él.
    ```bash
        cd web
    ```

2. He copiado los archivos elaborados con **Markdown (.md)** que ya he creado para las **Prácticas 1** y **2** en la carpeta `docs`. 
3. Una vez completada la documentación, utilizaremos **MkDocs** para generar una página web estática que contendrá toda la información escrita en formato Markdown.
    ```bash
        mkdocs build
    ```
   Esto generará los archivos para la web en la carpeta `site`.
4. Crearemos un repositorio en **GitHub** para alojar nuestro proyecto. Esto nos permitirá versionar el código y facilitar el despliegue en **GitHub Pages**.
    - Inicializa un nuevo repositorio de Git en tu proyecto local.
    ```bash
        git init
    ```
    - Añade todos los archivos del proyecto al área de preparación.
    ```bash
        git add .
    ```
    - Guarda los cambios en el repositorio con un mensaje descriptivo.
    ```bash
        git commit -m "Primer commit"
    ```
    - Conecta tu repositorio local con el repositorio remoto en GitHub.
    ```bash
        git remote add origin https://github.com/tu-usuario/tu-repo.git
    ```
    - Sube los cambios locales al repositorio remoto en la rama master.
    ```bash
        git push -u origin master
    ```
5. Con el sitio web generado, utilizaremos **GitHub Pages** para desplegarlo de manera sencilla y gratuita, haciéndolo accesible a través de una URL pública.
    - Este comando construye tu sitio web estático generado por **MkDocs** y lo sube directamente a la rama `gh-pages` de tu repositorio en **GitHub**. 
    ```bash
        mkdocs gh-deploy
    ```
  Esto habilita la publicación de tu sitio en **GitHub Pages**, haciendo que esté disponible en línea a través de la URL de tu repositorio.

6. Finalmente, comprobaremos que el sitio web esté en línea y funcionando correctamente accediendo a la URL proporcionada por **GitHub Pages**.
> https://tu-usuario.github.io/tu-repo/



