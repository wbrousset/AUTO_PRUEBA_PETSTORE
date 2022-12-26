@petstore
Feature: Pet Sore

  Background: 
    * url 'https://petstore.swagger.io/v2/pet'

  Scenario: Agregar una mascota POST
    * def petP =
      """
      {
        "id":"101017",
        "category":{
        "id":"0",
        "name":"string",
        },
        "name": "negrito",
        "photoUrls":[
        "string"
        ],
        "tags":[
        {
        "id":"0",
        "name":"string"
        }
        ],
        "status": "available"
      }
      """
    Given url 'https://petstore.swagger.io/v2/pet'
    And request petP
    When method post
    Then status 200
    * def id = response.id
    * print 'mascota creada con id: ', id
    * print response

  Scenario: Obtener una mascota existente GET
    Given path '101017'
    When method get
    Then status 200
    * print 'mascota existente: ', response.id
    * print response

  Scenario: Modificar una mascota existente PUT
    * def petU =
      """
      {
        "id":"101017",
        "category":{
        "id":"0",
        "name":"string",
        },
        "name": "scooby",
        "photoUrls":[
        "string"
        ],
        "tags":[
        {
        "id":"0",
        "name":"string"
        }
        ],
        "status": "available"
      }
      """
    Given url 'https://petstore.swagger.io/v2/pet'
    And request petU
    When method put
    Then status 200
    * def id = response.id
    * print 'mascota modificada con id: ', id
    * print response
