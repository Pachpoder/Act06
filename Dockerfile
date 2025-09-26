# Imagen base con OpenJDK 17 y Maven
FROM maven:3.9.6-eclipse-temurin-17

# Establece el directorio de trabajo
WORKDIR /app

# Copia todo el proyecto
COPY . .

# Construye la app con Maven
RUN mvn clean package -DskipTests

# Expone el puerto que usa Spring Boot
EXPOSE 8080

# Comando para ejecutar la app
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
