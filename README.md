# Prueba Pet Store
Se realizaron 3 escenarios de pruebas para validar el servicio https://petstore.swagger.io/v2/pet con diferentes metodos POST, GET y PUT
Para este proyecto se esta utilizando BDD, Java/Karate/cucumber

# Configuración de su maquina
* Establecer y configurar`JAVA_HOME, MAVEN_HOME` como variables de entorno
* Instalar Eclipse IDE
* Instalar plugin de Cucumber

## Escenarios 
* Se crearon los siguientes escenarios:
* 1.- Agregar una mascota POST
* 2.- Obtener una mascota existente GET
* 3.- Modificar una mascota existente PUT

# Modo de ejecución
* Importar el proyecto desde File/Maven/Existing Maven Projects
* Instalar las dependencias del POM: en el nombre del proyecto hacer click derecho/Maven/Update Project
* Ir al package petstore y abrir el archivo PetStoreRunner.java
* Desde el mismo archivo PetStoreRunner.java hacer click derecho/Run As/Junit Test

# Reporte
* Verificar el reporte en la carpeta del proyecto target/karate-reports/karate-summary.html