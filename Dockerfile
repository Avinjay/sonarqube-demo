FROM maven:3.8.7-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java","-jar","app.jar"]
