Feature: Create Booking
  Este servicio es utilizado para el registro de las reservas
  de vuelos de la empresa RestFul Booker

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Verificar petición correcta para crear una reserva reciba 200
    Given path '/booking'
    And request
    """
     {
        "firstname" : "Raul",
        "lastname" : "Gonzales",
        "totalprice" : 654,
        "depositpaid" : false,
        "bookingdates" : {
              "checkin" : "2020-10-29",
              "checkout" : "2020-10-29"
              },
              "additionalneeds" : "Lunch"
      }
    """
    When method POST
    Then status 200