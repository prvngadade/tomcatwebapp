# Install SSL for Tomcat
 
keytool -genkey -alias tomcat -keyalg RSA -keystore tomcat.jks
 
 After  add the below entry in **"server.xml"** file
 
 <Connector port="8443" maxThreads="150"
scheme="https" secure="true" SSLEnabled="true"
keystoreFile="/opt/tomcat.jks" keystorePass="test123"
clientAuth="false" keyAlias="tomcat" sslProtocol="TLS"/>
 
# To build image locally after going to root directory of projects
docker build -t tomcattestapp:1.0 .
# to rebuild and start container using docker-compose 
docker-compose -f docker-compose_volume.yml  up --build -d
OR
docker-compose -f docker-compose_localfolder.yml  up --build -d


