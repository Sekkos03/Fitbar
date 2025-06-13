# ─── 1) Build Stage ────────────────────────────────────────────────────
FROM maven:3.8.5-openjdk-17 AS builder
WORKDIR /app

# Pre-fetch dependencies
COPY pom.xml ./
COPY .mvn/ .mvn/
RUN mvn dependency:go-offline -B

# Copy the source and package
COPY src/ src/
RUN mvn package -DskipTests

# ─── 2) Run Stage ──────────────────────────────────────────────────────
FROM eclipse-temurin:17-jre
WORKDIR /app

# Expose the port your Spring Boot listens on
EXPOSE 8080

# Copy the fat-jar from the build stage
COPY --from=builder /app/target/*.jar app.jar

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]

