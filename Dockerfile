FROM openjdk:8

WORKDIR /usr/server

COPY minecraft_server.1.16.5.jar server.jar

WORKDIR /usr/server/data

EXPOSE 25565

CMD ["java", "-Xmx8G", "-Xms8G", "-jar", "../server.jar", "nogui"]

