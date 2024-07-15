# Proyecto Final Spotify

Este proyecto es un análisis exploratorio de datos (AED) utilizando datos de Spotify.

**Universidad Mayor de San Simón.**

**Diplomado de ESTADÍSTICA APLICADA A LA TOMA DE DECISIONES 3ra VERSIÓN, 2024.**

**Módulo II - Ingeniería de Datos**

**Docente:  Msc. Ing. Danny Luis Huanca Sevilla**

**Integrantes del Grupo:**

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

## Datasets

### Archivos CSV

Configurar el flag en AED2.ipynb para cargar los archivos CSV.

load_from_csv = True

Descomprimir [charts_bolivia_view.rar](data%2Fcharts_bolivia_view.rar)
[spotify_dataset_charts_bolivia_view.rar](data%2Fspotify_dataset_charts_bolivia_view.rar)

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

# Agregar dependencias con pip

Si necesitas agregar una nueva dependencia, primero instálala en tu entorno conda y luego actualiza el archivo `requirements.txt`:

```bash
pip install nueva-dependencia
pip freeze > requirements.txt
```

# Agregar dependencias con conda

Si necesitas agregar una nueva dependencia, primero instálala en tu entorno conda y luego actualiza el archivo `environment.yml`:

```bash
conda install nueva-dependencia
conda env export > environment.yml
```

# Actualizar dependencias

Si necesitas actualizar las dependencias a las últimas versiones, primero actualiza las dependencias en tu entorno conda y luego actualiza el archivo `requirements.txt`:

```bash
pip install -r requirements.txt --upgrade
pip freeze > requirements.txt
```

# Actualizar dependencias con conda

Si necesitas actualizar las dependencias a las últimas versiones, primero actualiza las dependencias en tu entorno conda y luego actualiza el archivo `environment.yml`:

```bash
conda update --all
conda env export > environment.yml
```

# Subir cambios de dependencias al repositorio

Si has actualizado las dependencias, no olvides subir los cambios al repositorio:

```bash
git add .
git commit -m "Actualizar dependencias"
git push origin nombre-de-mi-rama
```

# ETL

## Extracción

### Fuentes de Datos

- [Spotify API](https://developer.spotify.com/documentation/web-api/)
- [Kaggle](https://www.kaggle.com/)
- [Spotify Charts](https://spotifycharts.com/)
- [Spotify Charts API](https://spotifycharts.com/regional/bo/daily/latest)
- [Spotify Charts API (Global)](https://spotifycharts.com/regional/global/daily/latest)
- [Spotify Charts API (Bolivia)](https://spotifycharts.com/regional/bo/daily/latest)

### Proceso de Extracción

- Descargar datos de Spotify Charts API
- Descargar datos de Spotify Charts API (Global)
- Descargar datos de Spotify Charts API (Bolivia)
- Descargar datos de Kaggle
- Descargar datos de Spotify API
- Descargar datos de Spotify API (Audio Features)
- Descargar datos de Spotify API (Artistas)
- Descargar datos de Spotify API (Albums)
- Descargar datos de Spotify API (Tracks)
- Descargar datos de Spotify API (Genres)
- Descargar datos de Spotify API (Relaciones)
- Descargar datos de Spotify API (Relación Album - Artista)
- Descargar datos de Spotify API (Relación Album - Track)
- Descargar datos de Spotify API (Relación Artista - Género)
- Descargar datos de Spotify API (Relación Track - Artista)
- Descargar datos de Spotify API (Relación Track - Album)
- Descargar datos de Spotify API (Relación Track - Género)

## Transformación

### Proceso de Transformación

- Limpiar y Transformar los datos de Spotify Charts API
- Limpiar y Transformar los datos de Spotify Charts API (Global)
- Limpiar y Transformar los datos de Spotify Charts API (Bolivia)
- Limpiar y Transformar los datos de Kaggle
- Limpiar y Transformar los datos de Spotify API
- Limpiar y Transformar los datos de Spotify API (Audio Features)
- Limpiar y Transformar los datos de Spotify API (Artistas)
- Limpiar y Transformar los datos de Spotify API (Albums)
- Limpiar y Transformar los datos de Spotify API (Tracks)
- Limpiar y Transformar los datos de Spotify API (Genres)
- Limpiar y Transformar los datos de Spotify API (Relaciones)
- Limpiar y Transformar los datos de Spotify API (Relación Album - Artista)
- Limpiar y Transformar los datos de Spotify API (Relación Album - Track)
- Limpiar y Transformar los datos de Spotify API (Relación Artista - Género)
- Limpiar y Transformar los datos de Spotify API (Relación Track - Artista)
- Limpiar y Transformar los datos de Spotify API (Relación Track - Album)
- Unir los datos de Spotify Charts API con los datos de Spotify API (Audio Features)
- Unir los datos de Spotify Charts API (Global) con los datos de Spotify API (Audio Features)
- Unir los datos de Spotify Charts API (Bolivia) con los datos de Spotify API (Audio Features)

## Carga

### Destinos de Datos

- [MySQL](https://www.mysql.com/)

### Proceso de Carga con Pentaho

- Cargar los datos limpios y transformados en MySQL
- Cargar los datos limpios y transformados en MySQL (Audio Features)
- Cargar los datos limpios y transformados en MySQL (Artistas)
- Cargar los datos limpios y transformados en MySQL (Albums)
- Cargar los datos limpios y transformados en MySQL (Tracks)
- Cargar los datos limpios y transformados en MySQL (Genres)
- Cargar los datos limpios y transformados en MySQL (Relaciones)
- Cargar los datos limpios y transformados en MySQL (Relación Album - Artista)
- Cargar los datos limpios y transformados en MySQL (Relación Album - Track)
- Cargar los datos limpios y transformados en MySQL (Relación Artista - Género)
- Cargar los datos limpios y transformados en MySQL (Relación Track - Artista)
- Cargar los datos limpios y transformados en MySQL (Relación Track - Album)

## ETL con Spoon Pentaho

### Instalación de Pentaho

1. Descargar [Pentaho Data Integration](https://sourceforge.net/projects/pentaho/files/latest/download)
2. Descomprimir el archivo descargado
3. Ejecutar `spoon.sh` o `spoon.bat` según
4. Crear una nueva conexión a MySQL
5. Crear un nuevo archivo de transformación
6. Arrastrar y soltar los pasos necesarios para el ETL
7. Guardar y ejecutar la transformación
8. Crear un nuevo archivo de trabajo
9. Arrastrar y soltar la transformación creada
10. Guardar y ejecutar el trabajo
11. Revisar los logs y resultados
12. Exportar la transformación y el trabajo
13. Subir los archivos exportados al repositorio
14. Crear un nuevo directorio `etl` en el repositorio
15. Subir los archivos exportados al directorio `etl`
16. Crear un nuevo archivo `README.md` en el directorio `etl`
17. Agregar una descripción del ETL y los archivos utilizados
18. Subir los cambios al repositorio

## AED con Jupyter Notebooks

### Análisis Exploratorio de Datos

- Análisis de Datos de Spotify Charts API
- Análisis de Datos de Spotify Charts API (Bolivia)

### Visualización de Datos

- Visualización de Datos de Spotify Charts API
- Visualización de Datos de Spotify Charts API (Bolivia)


## Referencias

- [Spotify API](https://developer.spotify.com/documentation/web-api/)
- [Kaggle](https://www.kaggle.com/)
- [Spotify Charts](https://spotifycharts.com/)
- [Spotify Charts API](https://spotifycharts.com/regional/bo/daily/latest)
- [Spotify Charts API (Global)](https://spotifycharts.com/regional/global/daily/latest)
- [Spotify Charts API (Bolivia)](https://spotifycharts.com/regional/bo/daily/latest)

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

## Troubleshooting

- Si tienes problemas con la instalación de las dependencias, intenta actualizar conda y pip.
- Si tienes problemas con la ejecución de JupyterLab, intenta reiniciar el kernel.
- Si tienes problemas con la ejecución de Pentaho, intenta reiniciar la aplicación.
- Si tienes problemas con la carga de datos en MySQL, intenta reiniciar el servicio.
- Si tienes problemas con el uso de Git, intenta reiniciar la terminal.
- Si tienes problemas con el uso de PyCharm, intenta reiniciar la aplicación.
- Si tienes problemas con el uso de Jupyter Notebooks en PyCharm, intenta reiniciar la aplicación.
- Si tienes problemas con el uso de Jupyter Notebooks en PyCharm, intenta reiniciar el kernel.
- Si tienes problemas con el uso de Jupyter Notebooks en PyCharm, intenta reiniciar el entorno de conda.
- Si tienes problemas con el uso de Jupyter Notebooks en PyCharm, intenta reiniciar el servidor de Jupyter.
- Si tienes problemas con el uso de Jupyter Notebooks en PyCharm, intenta reiniciar el servicio de JupyterLab.
- Si tienes problemas con Spoon intenta incrementar la memoria disponible.  Editar el archivo `spoon.sh` o `spoon.bat` y modificar la línea `set PENTAHO_DI_JAVA_OPTIONS="-Xmx512m"` a `set PENTAHO_DI_JAVA_OPTIONS="-Xmx4096m"`.
- Si tienes problemas con git y archivos grandes intenta configurar git para aceptar archivos grandes.  Ejecutar `git config --global http.postBuffer 157286400` y `git config --global https.postBuffer 157286400`. or `git config --global http.postBuffer 524288000` and `git config --global https.postBuffer 524288000`.  Otra opción es usar `git lfs` para manejar archivos grandes.
- Pentaho PDI Spoon require Java 11.  Si tienes problemas con la versión de Java, intenta instalar Java 11 y configurar la variable de entorno `JAVA_HOME` a la ruta de instalación de Java 11.
- Si tiene problemas insertando las relaciones en MySQL, intenta desactivar las restricciones de clave foránea con `SET FOREIGN_KEY_CHECKS=0;` antes de insertar los datos y activarlas nuevamente con `SET FOREIGN_KEY_CHECKS=1;` después de insertar los datos.
- Puede también utilizar SET global FOREIGN_KEY_CHECKS=0; antes de ejecutar el job. 


## Contacto

- Valeria Callau Medrano
- Adriana Mendez Claros
- Valeria Terrazas Arce
- Alvaro Zambrana Sejas
