# Dockerfile para la aplicación Spring Boot (Java 17)
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el jar compilado en el contenedor
# Asegúrate de que el jar se encuentre en la ruta target/app.jar
COPY target/my-app-1.0-SNAPSHOT.jar app.jar

# Exponer el puerto en el que la aplicación escucha (usa el mismo que en tu configuracin: 8080)
EXPOSE 8080

# Variables de entorno por defecto (se pueden sobrescribir en el comando docker run)
ENV SPRING_DATASOURCE_URL=jdbc:mariadb://localhost:3306/Educantrol
ENV SPRING_DATASOURCE_USERNAME=luis
ENV SPRING_DATASOURCE_PASSWORD=master
ENV PORT=8080

# Ejecuta la aplicación
CMD ["java", "-jar", "app.jar"]
#CMD java -jar app.jar
