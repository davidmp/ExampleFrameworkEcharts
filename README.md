# EchartsTag
It is a Project of Echarts for Java

![](LogoEchartsTag.png)

## Steps to create a project

Step 1: To test you can create any Maven type project in Java (for example with the name of: EchartsJsp)

Step 2: Inside the pom.xml file put the following code that refers to the repository from where the library will be downloaded.
#### pom.xml
```xml
    <repositories>
            <repository>
                <id>jitpack.io</id>
                <url>https://jitpack.io</url>
            </repository>
    </repositories>
```
Step 3: Then Add the following dependency.

```xml
	<dependency>
	    <groupId>com.github.davidmp</groupId>
	    <artifactId>EchartsTag</artifactId>
	    <version>1.4</version>
	</dependency>
```
Step 4: Inside the Java Resources folder create a properties file with the following name syscenterlife.properties and inside it place the following content:
#### syscenterlife.properties
```properties
echarts.theme.name=default
echarts.lang.name=es
```

Step 5: Run your project with a content server, preferably Tomcat version 9 onwards and place in your browser http://localhost:8080/EchartsJsp/echartsdoc.jsp and the documentation on how to use it will appear.

![](PaginaDocumentacion.png)

# Example of Projects with EchartsTag
Example of Projects with the EchartsTag Framework

##### EchartsTag con Proyectos de Tipo Maven Servlets
Estructura de proyecto
![](pprincipal-servlet-estructura.png)
Resultados
![](pprincipal-servlet.png)
