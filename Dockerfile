FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/complete-build-lab-1.0.jar app.jar
CMD ["java", "-jar", "app.jar"]
