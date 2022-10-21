#FROM openjdk:8-jdk-alpine
#
#WORKDIR /app
#
#COPY target/gameficacao-1.0.0.jar /app/gameficacao.jar
#
#ENTRYPOINT ["java","-jar","gameficacao.jar"]
#
#FROM openjdk:8
#
#WORKDIR /app
#
#COPY /target/gameficacao-1.0.0.jar app/gameficacao-1.0.0.jar
#
#CMD java -jar gameficacao-1.0.0.jar
#
#EXPOSE 5005
#EXPOSE 8080

FROM openjdk:11.0.10

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

COPY ./target/gameficacao-1.0.0.jar /usr/src/app

EXPOSE 8080
EXPOSE 5005

ENTRYPOINT java -jar gameficacao-1.0.0.jar
