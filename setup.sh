#!/bin/bash
set -e

# Install dependencies
sudo apt update
# Check if Docker is installed
if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: Docker is not installed.' >&2
  exit 1
fi
sudo apt install -y osmium-tool wget

# Create folders
BASE_DIR=$(pwd)
DATA_DIR=$BASE_DIR/osm-data
NOMI_DIR=$BASE_DIR/nominatim-docker

mkdir -p $DATA_DIR

# # Clone Nominatim Docker repo if not exists
# if [ ! -d "$NOMI_DIR" ]; then
#   git clone https://github.com/mediagis/nominatim-docker.git $NOMI_DIR
# fi
# cd $NOMI_DIR
# rm -rf ./.git


# Download full Australia OSM if not exists
if [ ! -f "$DATA_DIR/australia-latest.osm.pbf" ]; then
  wget https://download.geofabrik.de/australia-oceania/australia-latest.osm.pbf -O "$DATA_DIR/australia-latest.osm.pbf"
fi

# Extract South Australia
if [ ! -f "$DATA_DIR/south-australia.osm.pbf" ]; then
  osmium extract "$DATA_DIR/australia-latest.osm.pbf" -b 129.0,-38.0,141.0,-25.0 -o "$DATA_DIR/south-australia.osm.pbf"
fi


echo -e "\033[0;32mSetup complete.\033[0m"
echo -e "\033[0;32mRun 'cd $NOMI_DIR' then 'docker-compose run --rm import-data' to import data.\033[0m"
echo -e "\033[0;32mRun 'docker-compose up -d api' to start API service.\033[0m"
