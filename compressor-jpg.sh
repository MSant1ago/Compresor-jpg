#!/bin/bash
# Version: 1.0.1
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
		-sampling-factor 4:2:0 \
		-define jpeg:dct-method=integer \
		-define jpeg:optimize-coding=true \
		-quality 95 \
		"$salida"
  fi
done
#
echo "Proceso exitoso. Guardados en 'comprimidas/'."