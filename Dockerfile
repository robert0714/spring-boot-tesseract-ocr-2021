#### Stage 1: Build the application
FROM eclipse-temurin:17-alpine as build

RUN apk update

# Install tesseract library
# You can see the below url to find other language pack to click 'Sub Packages (67) '
# https://pkgs.alpinelinux.org/package/edge/community/x86_64/tesseract-ocr
RUN apk add --no-cache tesseract-ocr tesseract-ocr-data-chi_tra tesseract-ocr-data-eng
 
RUN echo "Installing Tesseract OCR and language packs..."
# Check the installation status
RUN tesseract --list-langs
RUN tesseract -v

# Set the name of the jar
#ENV APP_FILE *.jar


# Copy our JAR
# COPY target/$APP_FILE /app.jar
COPY target/tesseract-ocr-api-1.0.0.jar /app.jar
  

# Launch the Spring Boot application
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
