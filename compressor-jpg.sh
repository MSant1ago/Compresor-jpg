#!/bin/bash
# Version: 1.0.0
# 18-enero-2026
# Script: compressor-jpg.sh
# Descripción: Comprime todas las imágenes en [.jpg]
# Salida: Archivos comprimidos con prefijo "compress_"
# Autor: Miguel Jingo
#
echo "Iniciando compresión de imágenes → .jpg"
#
# Verificar que ImageMagick esté disponible en OS
if ! command -v magick &> /dev/null; then
  echo "ERROR → ImageMagick (magick) no existe..."
  exit 1
fi
#
# Crea carpeta de salida
mkdir -p Comprimidas
#
# Procesa cada archivo .jpg
for img in *.jpg; do
  if [[ -f "$img" ]]; then
    salida="Comprimidas/Compress_$img"
    echo "Compressing $img → $salida"
    magick "$img" \
		-resize 1600x1600 \
		-strip \
		-interlace Plane \
		-sampling-factor 4:2:0 \
		-gaussian-blur 0.05 \
		-quality 95 \
		-modulate 105,110,100 \
		-define jpeg:dct-method=float \
		-sharpen 0x2 \
		"$salida"
  fi
done
#
echo "Proceso exitoso. Guardados en 'comprimidas/'."