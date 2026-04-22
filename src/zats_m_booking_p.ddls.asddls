@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Booking'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZATS_M_BOOKING_P 
as projection on ZATS_M_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSuppl : redirected to composition child ZATS_M_BOOKSUPPL_P,
    _Carrier,
    _Connection,
    _Customer,
    _Travel :redirected to parent ZAT_M_TRAVEL_P
}
