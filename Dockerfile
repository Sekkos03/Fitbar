FROM eclipse-temurin:17-jdk

WORKDIR /app

# Kopier innholdet fra Waiterbell-mappen inn i /app
COPY fitbar/ .

# Bygg med Maven
RUN ./mvnw clean package -DskipTests

# Start .jar-filen
CMD ["java", "-jar", "target/fitbar-0.0.1-SNAPSHOT.jar"]
