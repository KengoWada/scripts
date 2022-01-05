#!/bin/bash

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install python3.8-venv python3.8-dev python3-opencv redis-server postgresql nginx postgresql-contrib libpcap-dev libpq-dev -y

git clone https://github.com/KengoWada/raid_be.git /home/raid/raid_be

git clone https://github.com/KengoWada/raid_ml_model.git /home/raid/raid_ml_model

mkdir /home/raid/raid_be/static
mkdir /home/raid/raid_be/media
mkdir /home/raid/raid_ml_model/xray_uploads
mkdir /home/raid/raid_ml_model/xray_uploads_results
