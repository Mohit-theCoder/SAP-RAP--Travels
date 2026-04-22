@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Booking Suppl'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZATS_M_BOOKSUPPL_P as projection on ZATS_M_Booksuppl
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking : redirected to parent ZATS_M_BOOKING_P,
    _Supplement,
    _SupplementText,
    _Travel : redirected to ZAT_M_TRAVEL_P
}
