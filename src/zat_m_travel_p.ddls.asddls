@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Travel'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZAT_M_TRAVEL_P 
as projection on ZAT_M_Travel
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    Minion,
    statusText,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Agency,
    _booking :redirected to composition child ZATS_M_BOOKING_P,
    _Currency,
    _Customer,
    _OverallStatus
}
