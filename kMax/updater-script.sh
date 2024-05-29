#!/bin/bash
Green='\033[0;32m' 
Cyan='\033[0;36m'
purple='\034[0;35m'
NoColor='\033[0m' # No Color

echo -e "${purple} docker compose down AND all of images will be deleted ${NoColor}"
#docker compose -f docker-compose.yml down
docker compose down --rmi all
echo "did it worked___???"
echo -e "${Green}delete the Directory-files,json,yml etc. ${NoColor}"
rm de.json en.json fa.json de.yml en.yml fa.yml docker-compose.yml application.html.erb
#
echo -e "${Green} downloading the json, yml and erb Files from Github ${NoColor}"
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/docker-compose.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/de.json
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/en.json
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/fa.json
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/de.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/en.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/fa.yml
wget https://raw.githubusercontent.com/cy-berg/greenlight/main/kMax/application.html.erb
#
echo -e "${Green} docker compose up -d  runs /must rebuild Containers ${NoColor}"
#
docker compose up -d
