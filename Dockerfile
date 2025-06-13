# 1) Build stage
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app

# Copy only what’s needed to download deps
COPY pom.xml ./
COPY .mvn/ .mvn/
RUN mvn dependency:go-offline -B

# Copy the rest of your code and package
COPY src/ src/
RUN mvn package -DskipTests

# 2) Run stage
FROM eclipse-temurin:17-jre
WORKDIR /app

# Expose the port your Spring Boot listens on
EXPOSE 8080

# Copy the fat-jar from the build stage
COPY --from=build /app/target/*.jar app.jar

# Run it
ENTRYPOINT ["java", "-jar", "app.jar"]
