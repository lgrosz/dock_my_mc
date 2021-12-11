FROM openjdk:17

WORKDIR /usr/server

COPY minecraft_server.1.18.1.jar server.jar

WORKDIR /usr/server/data

EXPOSE 25565

CMD ["java", "-Xmx8G", "-Xms8G", "-jar", "../server.jar", "nogui"]

