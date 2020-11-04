Feature: Delete Booking
  Este servicio es utilizado para eliminar 1 reserva
  recientemente creada y la generacion de 1 token

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'

    Scenario: Verificar petición correcta para eliminar una reserva reciba 201
      * def CreateTokenResponse = call read('classpath:common/CreateToken.feature')
      * def accessToken = CreateTokenResponse.response.token
      * def CreateBookingResponse = call read('classpath:common/CreateBooking.feature')
      * def bookingId = CreateBookingResponse.response.bookingid
      Given path '/booking/' + bookingId
      And cookie token = accessToken
      When method DELETE
      Then status 201