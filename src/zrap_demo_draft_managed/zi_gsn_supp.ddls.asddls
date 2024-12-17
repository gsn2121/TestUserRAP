@EndUserText.label: 'Interface View : Supp'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GSN_SUPP
  as select from ztb_supp_ass
  association to parent ZI_GSN_TEST as _test on $projection.testid = _test.Testid
{
      
      @EndUserText.label: 'Supplier Id'
  key supplierid,
      @EndUserText.label: 'Supplier Name'
      suppliername,
      @EndUserText.label: 'TestId'
      @ObjectModel.foreignKey.association: '_TEST'
      testid,
      @EndUserText.label: 'Country'
      country,
      @EndUserText.label: 'City'
      city,
      @EndUserText.label: 'Street'
      street,
      /* Associations */
      _test
}
