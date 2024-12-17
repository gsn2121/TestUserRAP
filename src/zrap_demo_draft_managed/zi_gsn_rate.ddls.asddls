@EndUserText.label: 'Interface View : Rate'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GSN_RATE
  as select from ztb_rat_ass
  association to parent ZI_GSN_TEST as _test on $projection.Testid = _test.Testid
{
      @EndUserText.label: 'Rating Id'
  key ratingid     as Ratingid,
      @EndUserText.label: 'Test Id'
      @ObjectModel.foreignKey.association: '_TEST'
      testid       as Testid,
      @EndUserText.label: 'Rating Range'
      ratingvalue  as Ratingvalue,
      @EndUserText.label: 'Review'
      review       as Review,
      @EndUserText.label: 'Reviewer Name'
      reviewername as Reviewername,
      /* Associations */
      _test
}
