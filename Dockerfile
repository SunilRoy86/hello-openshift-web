FROM tomcat:8.5.35-jre10

EXPOSE 8080
RUN OC -y install java
RUN java -version

ADD target/firstjsp.jar /usr/local/tomcat/webapps/
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]



