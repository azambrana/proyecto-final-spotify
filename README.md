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

Método alternativo, pero puede requerir otros pasos, no se ha probado aún.

1. Crear y activar el entorno:
    ```bash
    conda create -n proyecto-final-spotify python=python=3.11.7
    conda activate proyecto-final-spotify
    ```

2. Instalar las dependencias:
    ```bash
    pip install -r requirements.txt
    ```

## Clonar el Repositorio

Para comenzar a trabajar en este proyecto, primero clona el repositorio desde GitHub:

```bash
git clone https://github.com/tu-usuario/proyecto-final-spotify.git
cd proyecto-final-spotify
