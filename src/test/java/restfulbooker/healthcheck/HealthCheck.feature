Feature: Health Check
  Este servicio es utilizado para una verificacion
  de que el servicio este levantado

  Background:
    * url baseUrl

    Scenario: Verificar petición correcta para consultar el estado del servicio reciba 201
      Given path '/ping'
      When method GET
      Then status 201