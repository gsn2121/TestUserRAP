@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_GSN_TRAVEL
  as select from ztgsn_travel
  composition [0..*] of ZI_GSN_BOOKING          as _Booking
  association [0..1] to /DMO/I_Agency           as _Agency       on $projection.AgencyID = _Agency.AgencyID
  association [0..1] to /DMO/I_Customer         as _Customer     on $projection.CustomerID = _Customer.CustomerID
  association [0..1] to I_Currency              as _Currency     on $projection.CurrencyCode = _Currency.Currency
  association [1..1] to /DMO/I_Travel_Status_VH as _TravelStatus on $projection.Status = _TravelStatus.TravelStatus

{
  key travel_id     as TravelID,
      agency_id     as AgencyID,
      customer_id   as CustomerID,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Memo,
      status        as Status,
      @Semantics.user.createdBy: true
      createdby     as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat     as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat as Lastchangedat,

      /* associations */
      _Booking,
      _Agency,
      _Customer,
      _Currency,
      _TravelStatus
}
