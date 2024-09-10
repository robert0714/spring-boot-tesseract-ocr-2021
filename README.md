# Spring Boot Tesseract Ocr Api

> Spring Boot Tesseract Ocr Api
>
<img src="https://raw.githubusercontent.com/mhmmderen3/spring-boot-tesseract-ocr/master/images/springboot-tesseract-ocr-openapi.png" alt="Spring Boot Tesseract Ocr Api" width="100%" height="100%"/> 

## Prerequisites

* Java 17
* Maven 3.3+
* Docker 19.03+
* Docker Compose 1.25+

## Installation
* step 1

```bash
mvn compile jib:dockerBuild 
```
or

```bash
mvn clean package
docker build -t tesseract-ocr .
```

* step 2
```sh
docker-compose up -d 
```

## Used Technologies

* Spring Boot 3.2.9
* Tesseract
* Tess4j
* Slf4j
* Spring Boot Web
* SpringDoc Openapi WebMvc Core
* SpringDoc Openapi Ui
* Spring Boot Validation
* Spring Boot Actuator
* Maven Jib Plugin
* Maven Clean Plugin
* Maven Enforcer Plugin
* Lombok
* Dev Tools
* Spring Boot Test

## SpringDoc OpenApi

> You can access the SpringDoc Openapi from the following url.

http://localhost:9090/api

<img src="https://raw.githubusercontent.com/mhmmderen3/spring-boot-tesseract-ocr/master/images/springdoc-openapi.png" alt="SpringDoc Openapi" width="100%" height="100%"/> 
