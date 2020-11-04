Feature: Partial Update Booking
  Este servicio es utilizado para la actualizacion parcial
  de 1 reserva a traves de la creación de 1 reserva nueva
  y la generacion de 1 token.

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para actualizar parcialmente una reserva reciba 200
      * def CreateTokenResponse = call read('classpath:common/CreateToken.feature')
      * def accessToken = CreateTokenResponse.response.token
      * def CreateBookingResponse = call read('classpath:common/CreateBooking.feature')
      * def bookingId = CreateBookingResponse.response.bookingid
      Given path '/booking/' + bookingId
      And cookie token = accessToken
      And request
      """
        {
          "firstname" : "Eduardo",
          "lastname" : "Victorino"
         }
      """
      When method PATCH
      Then status 200