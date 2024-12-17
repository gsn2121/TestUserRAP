@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_GSN_BOOKING
  as select from ztgsn_booking as Booking
  association        to parent ZI_GSN_TRAVEL as _Travel     on  $projection.TravelID = _Travel.TravelID
  association [1..1] to /DMO/I_Carrier       as _Carrier    on  $projection.AirlineID = _Carrier.AirlineID
  association [1..1] to /DMO/I_Customer      as _Customer   on  $projection.CustomerID = _Customer.CustomerID
  association [1..1] to /DMO/I_Connection    as _Connection on  $projection.AirlineID    = _Connection.AirlineID
                                                            and $projection.ConnectionID = _Connection.ConnectionID
  association [1..1] to /DMO/I_Flight        as _Flight     on  $projection.AirlineID    = _Flight.AirlineID
                                                            and $projection.ConnectionID = _Flight.ConnectionID
                                                            and $projection.FlightDate   = _Flight.FlightDate
{
  key Booking.travel_id     as TravelID,

  key Booking.booking_id    as BookingID,

      Booking.booking_date  as BookingDate,

      Booking.customer_id   as CustomerID,

      Booking.carrier_id    as AirlineID,

      Booking.connection_id as ConnectionID,

      Booking.flight_date   as FlightDate,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      Booking.flight_price  as FlightPrice,

      Booking.currency_code as CurrencyCode,

      //      _Travel.LastChangedAt as LastChangedAt, -- Take over ETag from parent

      /* associations */
      _Travel,
      _Carrier,
      _Customer,
      _Connection,
      _Flight
}
