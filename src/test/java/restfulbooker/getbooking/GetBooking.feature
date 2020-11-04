Feature: Get Booking
  Este servicio es utilizado para el listado de 1 reserva
  a través de el codigoId de 1 reserva

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta con una reserva id reciba cod 200
      * string schema = read('classpath:restfulbooker/getbooking/scenario1-schema.json')
      * def SchemaUtils = Java.type('com.intuit.karate.restfulbooker.util.SchemaUtils')
      Given path '/booking/' + 5
      When method GET
      Then status 200
      * assert SchemaUtils.isValid(response, schema)