# To build image locally after goingto root directory of projects
docker build -t tomcattestapp:1.0 .
# to rebuild and start container using docker-compose 
docker-compose -f docker-compose_volume.yml  up --build -d
docker-compose -f docker-compose_localfolder.yml  up --build -d
