# Compresor JPG Avanzado
Script de compresión profesional que supera a los compresores comerciales con ahorros de hasta 80% en tamaño y manteniendo calidad visual al máximo.

## Descripción

Pipeline optimizado de compresión .jpg con ImageMagick que combina técnicas avanzadas:
- Redimensionamiento inteligente
- Eliminación de metadatos
- Codificación progresiva
- Submuestreo cromático 4:2:0
- Ajustes profesionales de nitidez y color

*Ideal para documentos técnicos, reportes de ingeniería, archivos profesionales y fotografías de alta resolución.*

## Requisitos minimos
- ImageMagick | 7.x o superior |
- Bash Shell | 4.x o superior |
- SO | Windows (Git Bash) / Linux / macOS |

## Instalación

```bash
# Descargar el script
curl -O https://raw.githubusercontent.com/MSant1ago/compressor-jpg/main/compressor-jpg.sh

# Dar permisos de ejecución (Linux/macOS)
chmod +x compressor-jpg.sh
```

## USO
### Pasos básicos
1. **Ubicar el script** en el directorio donde se enecuentran los archivos `.jpg`
2. **Ejecutar** desde terminal (Hacer clic):
```bash
./compressor-jpg.sh
```
3. Revisar resultados en la carpeta que se creara con el nombre `Comprimidas/`

### Ejemplo de ejecución
```
Iniciando compresión de imágenes → .jpg
Compressing foto001.jpg → Comprimidas/Compress_foto001.jpg
Compressing documento.jpg → Comprimidas/Compress_documento.jpg
Proceso exitoso. Guardados en 'comprimidas/'.
```

## Rendimiento Comparativo
Ejemplo Real (Puede variar en función del peso)

| Archivo | Original | Comprimido | Ahorro |
|---------|----------|------------|--------|
| `documento_tecnico.jpg` | 5.2 MB | 1.0 MB | **80.8%** |
| `plano_arquitectonico.jpg` | 8.7 MB | 1.9 MB | **78.2%** |
| `foto_proyecto.jpg` | 3.4 MB | 0.7 MB | **79.4%** |

## Precauciones
- No modifica archivos originales. (Crea copias)
- Verifica instalación de ImageMagick: `magick --version`, git bash
- Solo procesa directorio actual (no subdirectorios)
- Optimizado para fotografías y documentos escaneados

## Autor
Ing. Miguel S. Jingo \
*Imbabura - Ecuador*