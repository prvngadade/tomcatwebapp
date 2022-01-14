# To build image locally after going to root directory of projects
docker build -t tomcattestapp:1.0 .
# to rebuild and start container using docker-compose 
docker-compose -f docker-compose_volume.yml  up --build -d
OR
docker-compose -f docker-compose_localfolder.yml  up --build -d
