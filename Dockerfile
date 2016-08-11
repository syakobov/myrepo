FROM centos
MAINTAINER Syakobov
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat
RUN mkdir /logs
ENV NAME name
ENTRYPOINT tomcat start && tail -F /logs/catalina.out
ADD petclinic.war /usr/share/tomcat/webapps
