Feature: Get Booking
  Este servicio es utilizado para el listado de 1 reserva
  a través de el codigoId de 1 reserva

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta con una reserva id reciba cod 200
      Given path '/booking/' + 10
      When method GET
      Then status 200