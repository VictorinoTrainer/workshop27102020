Feature: Get Booking Ids
  Este servicio es utilizado para el listado de
  todos los codigos Id de las reservas de la empresa
  RestFul Booker

  Background:
    * url baseUrl

    Scenario: Verificar peticion correcta al obtener todos los Booking Ids
      Given path '/booking'
      When method GET
      Then status 200