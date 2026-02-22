#!/bin/sh

PAPER_URL="https://fill-data.papermc.io/v1/objects/3a2041807f492dcdc34ebb324a287414946e3e05ec3df6fd03f5b5f7d9afc210/paper-1.12.2-1620.jar"

# server.jar yoksa indir
if [ ! -f server.jar ]; then
  echo "Paper 1.12.2 indiriliyor..."
  curl -L -o server.jar "$PAPER_URL"
fi

# Sunucuyu başlat
java -Xms512M -Xmx1024M -jar server.jar nogui
