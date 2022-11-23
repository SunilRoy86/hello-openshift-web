FROM openjdk:8
EXPOSE 8080

RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
ADD target/firstjsp.jar firstweb.jar

ENTRYPOINT ["java","-jar","/firstweb.jar"]

