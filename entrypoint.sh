#!/bin/sh
# Utilise la variable PORT si elle existe (ex: Render), sinon port 8080 par défaut
PORT=${PORT:-8080}
sed -i "s/8080/$PORT/g" /etc/xray/config.json

echo "=========================================="
echo "Serveur démarré avec succès !"
echo "Port d'écoute : $PORT"
echo "UUID          : e3a478b2-5e1b-4cf7-8b09-1a2b3c4d5e6f"
echo "Path          : /nexustunnel"
echo "=========================================="

exec /usr/bin/xray run -config /etc/xray/config.json
