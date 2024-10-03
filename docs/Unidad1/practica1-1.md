# 📘 Práctica 1: Git Trabajando con ramas y uniones
 En esta práctica aprenderás los conceptos de ramas en Git, su gestión y ciclo de vida, y cómo realizar uniones (merge) para fusionar ramas, resolviendo los posibles conflictos que puedan surgir durante el proceso
!!! note "Objetivos"
    - Aprenderás el concepto de rama.
    - La gestión y el ciclo de vida (creación, modificación, borrado, …) de ramas.
    - Aprenderás el concepto de unión (merge) que nos posibilita la fusión de ramas.    
    - A solucionar los posibles conflictos que pueden aparecer en el momento del merge.
## 1. Inicialización del repositorio Git

Antes de comenzar a trabajar con ramas, debemos asegurarnos de que estamos en un repositorio de Git. Si aún no has inicializado uno, este paso es clave. Ejecutando el siguiente comando lo inicializamos:
    ```bash
        git init
    ```
Esto creará una carpeta `.git` donde Git gestionará todo el historial de tu proyecto.

## 2. Crear una nueva rama y comprobar su creación  
En este paso, crearemos una nueva rama en el repositorio local. Las ramas permiten trabajar en diferentes versiones del proyecto sin afectar el trabajo principal. 
También comprobaremos que la rama se ha creado correctamente.

- Cambia a la rama primera
    ```bash
        git checkout primera
    ```
- Crea un nuevo archivo en esta rama. Por ejemplo un `.txt`
    ```bash
        nano fichero.txt
    ```
    Escribe algo en el archivo, guárdalo y ciérralo.
- Ahora cambia a la rama principal `main` para fusionar la nueva rama primera con ella:
    ```bash
        git checkout main
    ```
- Fusiona los cambios de la rama `primera` en la rama `main`:
  
     ```bash
        git merge primera
     ```
*¿Se ha producido conflicto?*
    No se ha producido ningún conflicto porque el archivo fichero.txt no existía en la rama main, y al fusionarlo no hay sobreposición de contenido.
## 3. Borrar la rama `primera`

Una vez fusionada la rama con el proyecto principal, no necesitamos la rama `primera` más. En este paso, aprenderemos cómo eliminar una rama local que ya no es necesaria.
    ```bash
        git branch -d primera
    ```
## 4. Crear una rama `segunda` y provocar un conflicto al modificar un archivo

En este paso, crearemos una nueva rama `segunda` y modificaremos un archivo existente para generar un conflicto. Los conflictos ocurren cuando dos ramas intentan modificar la misma parte de un archivo, y Git no sabe cuál versión debe conservar.

- Crea una nueva rama llamada `segunda`:
        
        git checkout -b segunda
        

- Cambia a la rama `segunda` y modifica un archivo existente, por ejemplo `fichero.txt`:
  
        nano fichero.txt

- Cambia de nuevo a la rama `main`:
  
        git checkout main

- Intenta fusionar la rama `segunda` con `main`:

        git merge segunda

*Comprobación del conflicto:*
Si has modificado el mismo archivo tanto en main como en segunda, se producirá un conflicto de fusión. Puedes comprobar el conflicto con el siguiente comando: `git diff
`
## 5. Solucionar el conflicto y sincronizar con el remoto

Finalmente, aprenderemos a resolver los conflictos generados, tomando decisiones sobre qué cambios conservar. Después de resolver el conflicto, sincronizaremos los cambios con el repositorio remoto, para que estén accesibles en GitHub.
- Para resolver el conflicto, edita el archivo donde se ha producido el error. Git indicará las secciones conflictivas con etiquetas como `<<<<<<<`, `=======`, y `>>>>>>>`. Solo necesitas elegir qué partes del código conservar o combinarlas.

- Una vez que hayas resuelto el conflicto, guarda el archivo y añade los cambios con:
  
        git add fichero.txt

- Completa la fusión con:

        git commit -m "Conflicto resuelto por Max"

- Finalmente, sincroniza los cambios de la rama segunda con el repositorio remoto:

        git push origin segunda

Hemos resuelto el conflicto y subido la solución a GitHub.

