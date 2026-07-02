@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{ serviceQuality: #B,
                         sizeCategory: #S,
                         dataClass: #MIXED
                         }
define view entity ZJMN_CDS_01
  as select from /dmo/flight
{
  key carrier_id    as AirlineID,
  key connection_id as ConnectionId,
  key flight_date   as flightDate,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText.label: 'Precio'
      price         as Price,
      currency_code as Currency
}
