FROM maven:latest as BUILD
COPY src /usr/src/Demo1WebApp/src
COPY pom.xml /usr/src/Demo1WebApp/
RUN mvn -f /usr/src/Demo1WebApp/pom.xml clean package

FROM tomcat:latest
EXPOSE 8080
COPY --from=BUILD /usr/src/Demo1WebApp/target/Demo1WebApp.war /usr/local/tomcat/webapps/
