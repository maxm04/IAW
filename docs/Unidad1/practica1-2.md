# 📘 Práctica 2: ¿Cómo colaborar en un proyecto de software libre? ¿Qué es un Pull Request (PR)?
 Aprenderemos qué es un **Pull Request** y cómo utilizarlo para proponer cambios en un proyecto de **GitHub**, facilitando la colaboración y revisión de código.
!!! note "Objetivos"
    - Conocer el concepto de Pull Request.
    - Conocer la metodología para colaborar en proyectos alojados en GitHub realizando Pull Requests.
## Instrucciones para como colaborar en un proyecto con PR

**Realiza un fork del repositorio**

 - Ve al repositorio principal en GitHub (por ejemplo, `https://github.com/maxm04/IAW`).
 - Haz clic en el botón "Fork" que se encuentra en la parte superior derecha.
  
Realizado el fork, tendrás una copia del repositorio en tu cuenta de GitHub. Este nuevo repositorio será tu versión del proyecto, donde podrás realizar cambios.

**Clona tu fork a tu máquina local**

Debes clonar el repositorio desde tu cuenta de GitHub a tu máquina local. Para hacerlo, sigue estos pasos:

  - Abre tu terminal y ejecuta el siguiente comando: 
  
        git clone git@github.com:maxm04/IAW.git

Una vez clonado el repositorio crearemos una nueva rama

**Crear nueva rama**
Para mantener el trabajo organizado y evitar conflictos, es recomendable crear una nueva rama donde realizarás los cambios.

    git checkout -b (NOMBRE DE LA RAMA)

**Confirmar los cambios**
- Añade los archivos modificados al índice de Git
  
    git add .

- Realiza el commit con un mensaje descriptivo:
  
    git commit -m "Descripción de los cambios realizados"

Una vez hecho el commit seguimos.

**Sube los cambios a GitHub**

  - Sube los cambios de tu rama local al repositorio en GitHub. Usa el siguiente comando para empujar los cambios:

        git push origin (NOMBRE DE LA RAMA)

**Crea un Pull Request (PR)**
Un Pull Request es una solicitud para que los mantenedores del proyecto revisen y fusionen tus cambios con el código principal.Un Pull Request es una solicitud para que los mantenedores del proyecto revisen y fusionen tus cambios con el código principal.

 1. Ve a tu repositorio forkeado en GitHub.
 2. Verás un mensaje indicando que recientemente subiste cambios en tu rama. Haz clic en "Compare & pull request".
 3. Añade una descripción detallada de los cambios que has realizado
 4. Haz clic en "**Create Pull Request**".

Ahora solo falta esperar que nos validen lso cambios para que sean publicados en el repositorio principal donde queríamos colaborar.