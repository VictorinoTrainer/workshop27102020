Feature: Update Booking
  Este servicio es utilizado para la actualización de 1 reserva
  a traves de la creación de 1 reserva nueva y la generación
  de 1 token como prerrequisito se utilizará el feature de
  createToken del directorio common

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para actualizar una reserva reciba 200
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
          "lastname" : "Victorino",
          "totalprice" : 111,
          "depositpaid" : true,
          "bookingdates" : {
              "checkin" : "2018-01-01",
              "checkout" : "2019-01-01"
          },
          "additionalneeds" : "Breakfast"
      }
      """
      When method PUT
      Then status 200



