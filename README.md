# Proyecto Final Spotify

Este proyecto es un análisis exploratorio de datos (AED) utilizando datos de Spotify.

Universidad Mayor de San Simón.

Diplomado de ESTADÍSTICA APLICADA A LA TOMA DE DECISIONES 3ra VERSIÓN, 2024.  

Módulo II - Ingeniería de Datos

Docente:  Msc. Ing. Danny Luis Huanca Sevilla 

Integrantes del Grupo:

- Callau Medrano Valeria 
- Mendez Claros Adriana 
- Terrazas Arce Valeria 
- Zambrana Sejas Alvaro 

## Configuración del Entorno

### Requisitos

- [Anaconda](https://www.anaconda.com/products/distribution)
- [Git](https://git-scm.com/)

El repositorio base cuenta con las siguientes dependencias:

- pandas
- numpy
- seaborn
- matplotlib
- jupyter

### Clonar el Repositorio

Para comenzar a trabajar en este proyecto, primero clona el repositorio desde GitHub:

```bash   
git clone https://github.com/azambrana/proyecto-final-spotify.git
cd proyecto-final-spotify
```

### Crear y Activar el Entorno

#### Usando `environment.yml` 

Este método es recomendado ya que asegura que todos los colaboradores tengan el mismo entorno configurado y reduce la posibilidad de problemas de compatibilidad.

1. Crear el entorno:
    ```bash
    conda env create -f environment.yml
    ```

2. Activar el entorno:
    ```bash
    conda activate proyecto-final-spotify
    ```

#### Usando `requirements.txt` 

Método alternativo que puede requerir otros pasos, no se ha probado aún.

1. Crear y activar el entorno:
    ```bash
    conda create -n proyecto-final-spotify python=3.11.7
    conda activate proyecto-final-spotify
    ```

2. Instalar las dependencias:
    ```bash
    pip install -r requirements.txt
    ```

## Uso de JupyterLab

1. Asegúrate de que el entorno esté activado:
    ```bash
    conda activate proyecto-final-spotify
    ```

2. Inicia JupyterLab:
    ```bash
    jupyter lab
    ```

3. Accede al siguiente URL

   http://localhost:8888/lab

## Uso de JupyterLab

1. Asegúrate de que el entorno esté activado:
    ```bash
    conda activate proyecto-final-spotify
    ```

2. Inicia JupyterLab:
    ```bash
    jupyter lab
    ```

3. Accede al siguiente URL

   http://localhost:8888/

## Configuración del Proyecto en PyCharm

1. Clonar el Repositorio
    ```bash
    git clone https://github.com/tu-usuario/proyecto-final-spotify.git
    cd proyecto-final-spotify
    ```

2. Abrir el Proyecto en PyCharm

3. Configurar el Entorno de Conda
    - File > Settings > Project: proyecto-final-spotify > Python Interpreter
    - Configuración (rueda dentada) > Add > Conda Environment > Existing environment
    - Selecciona python.exe o bin/python en la carpeta del entorno conda

4. Instalar Dependencias
    ```bash
    $ conda activate proyecto-final-spotify
    $ pip install -r requirements.txt
    # o
    $ conda env create -f environment.yml
    ```

## Trabajar con Jupyter Notebooks en PyCharm

1. Crear un Nuevo Notebook de Jupyter
    - File > New > File... > Nombra el archivo con la extensión .ipynb

2. Ejecutar Celdas
    - Usa los íconos de ejecución junto a cada celda

## Mantener el Repositorio Actualizado

1. Crear una Nueva Rama y Hacer Cambios
    ```bash
    git checkout -b nombre-de-mi-rama
    ```

2. Realizar cambios y subirlos
    ```bash
    git add .
    git commit -m "Descripción de mis cambios"
    git push origin nombre-de-mi-rama
    ```

3. Crear un Pull Request en GitHub

4. Mantener el Repositorio Actualizado (usando merge)
    ```bash
    git checkout main
    git pull origin main
    git checkout nombre-de-mi-rama
    git merge main
    ```
