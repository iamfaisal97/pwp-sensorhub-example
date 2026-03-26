#!/usr/bin/env bash
flask --app=sensorhub init-db
flask --app=sensorhub testgen
echo "=== MASTER KEY ==="
flask --app=sensorhub masterkey
echo "=== END MASTER KEY ==="
gunicorn -w 2 -b 0.0.0.0:$PORT "sensorhub:create_app()"
