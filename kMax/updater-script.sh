#!/bin/bash
#
Green='\033[0;32m' 
Cyan='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${Green} docker compose down ${NC}"
#docker compose -f docker-compose.yml down
echo "???did it worked"
docker compose down

echo -e "${Cyan}delete the Directory-files,json,yml etc. ${NC}"
rm de.json en.json fa.json de.yml en.yml fa.yml docker-compose.yml application.html.erb
#
echo -e"${Green} docker compose down ${NC}"
docker compose -f docker-compose.yml down
#docker compose down
echo -e "${Green} downloading the json, yml and erb Files from Github ${NC}"
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/docker-compose.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/de.json
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/en.json
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/fa.json
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/de.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/en.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/fa.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/application.html.erb
#
echo -e "${Green} docker compose up -d  runs /Building Containers ${NC}"
#
docker compose up -d
