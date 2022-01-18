FROM centos:centos7
RUN yum -y update && yum -y install wget && yum -y install tar
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN yum -y install java
RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.73/bin/apache-tomcat-8.5.73.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.73/* /opt/tomcat/
WORKDIR /opt/tomcat/webapps
COPY /opt/server.xml /opt/tomcat/conf/server.xml
RUN wget https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war
WORKDIR /opt
RUN wge
EXPOSE 8080
EXPOSE 8009
EXPOSE 8443
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
