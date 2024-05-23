# Proyecto de Automatización de Servicios con Postman, Maven y Karate  🖥️🖥️🖥️

## Descripción

Este proyecto tiene como objetivo automatizar pruebas de servicios utilizando Postman, dependencias de  Maven y el framework Karate. Karate permite realizar pruebas de API de manera sencilla, y con la combinación de Postman y Maven, podemos asegurar una alta calidad en las pruebas y consumo de los  servicios de manera eficiente.

## Estructura del Proyecto 🦉🦉

├── pom.xml
├── README.md
├── src
│ └── test
│   └── java
│      └── backend
│        └── managementest
│        └── user
│   ├── resources
│ │ └  ── backend
│        └── responsePost.json
         └── responsePut.json
         └── user.feature
│      └── karate-config.js
       └── karate-properties.json

## Prerrequisitos

Antes de comenzar, asegúrate de tener instalados los siguientes programas:

- [Java JDK 21](https://www.oracle.com/java/technologies/javase-downloads.html)
- [Apache Maven](https://maven.apache.org/install.html)
- [Postman](https://www.postman.com/downloads/)

## Instalación

1️⃣ Clona el repositorio en tu máquina local:💾

    ```sh
    git clone https://github.com/amileja/backend_karate.git
    ```

2️⃣ Configura el proyecto en tu IDE de preferencia (por ejemplo, el utilizado para la creación de éste proyecto fué IntelliJ IDEA, también puedes usar Eclipse), selecciona **File > Open...**. Navega hasta el directorio del proyecto y selecciónalo.

3️⃣ IntelliJ IDEA detectará automáticamente que se trata de un proyecto Maven y comenzará a descargar las dependencias necesarias.


## Configuración de Karate

Karate es un framework de pruebas de API que combina una sintaxis sencilla con potentes capacidades de prueba. La configuración básica se realiza en el archivo `pom.xml`.

### Dependencias ⚠️

Asegúrate de que tu `pom.xml` incluya las siguientes dependencias:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>petStore</artifactId>
    <version>2.0-SNAPSHOT</version>
    <packaging>jar</packaging>

    <properties>

        <maven.compiler.version>3.8.1</maven.compiler.version>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>21.0.2</java.version>
        <karate.version>1.1.0</karate.version>
    </properties>

    <dependencies>

        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-java</artifactId>
            <version>7.2.3</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-junit</artifactId>
            <version>7.2.3</version>
            <scope>test</scope>
        </dependency>
        <!-- JUnit -->
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.13.2</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>io.karatelabs</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>1.5.0.RC4</version>
        </dependency>
        <dependency>
            <groupId>net.masterthought</groupId>
            <artifactId>cucumber-reporting</artifactId>
            <version>5.8.0</version>
        </dependency><dependency>
        <groupId>net.masterthought</groupId>
        <artifactId>cucumber-reporting</artifactId>
        <version>5.8.0</version>
    </dependency>
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-java</artifactId>
            <version>6.9.1</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-junit</artifactId>
            <version>6.9.1</version>
            <scope>test</scope>
        </dependency>

    </dependencies>

    <build>
        <testResources>
            <testResource>
                <directory>src/test/resources</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>

            </plugin>
        </plugins>
    </build>
</project>


LICENCIA 🥰
Este README proporciona una guía clara sobre cómo configurar y ejecutar pruebas automatizadas utilizando Postman, Maven y Karate, con desarrollo en el IDE IntelliJ IDEA. Ajusta el contenido según sea necesario para que se adapte a los detalles específicos de tu proyecto.






