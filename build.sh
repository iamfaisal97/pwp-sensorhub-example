#!/usr/bin/env bash
set -e
pip install -r requirements.txt
pip install .
flask --app=sensorhub init-db
flask --app=sensorhub testgen
flask --app=sensorhub masterkey
