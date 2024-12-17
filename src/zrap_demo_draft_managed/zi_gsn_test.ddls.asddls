@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'Interface View : Test'
define root view entity ZI_GSN_TEST
  as select from ztb_test_ass as Testasses

  composition [0..*] of ZI_GSN_QUES as _question
  composition [0..*] of ZI_GSN_RATE as _rating
  composition [0..*] of ZI_GSN_SUPP as _supplier

{
       @EndUserText.label: 'Test ID'
  key  testid         as Testid,
       @EndUserText.label: 'Supplier Id'
       supplierid     as Supplierid,
       @EndUserText.label: 'Test Name'
       testname       as Testname,
       @Semantics.amount.currencyCode: 'Currency'
       @EndUserText.label: 'Test Price'
       testprice      as Testprice,
       @EndUserText.label: 'Currency'
       currency       as Currency,
       @EndUserText.label: 'Rating'
       rating         as Rating,
       @EndUserText.label: 'Changed At'
       @Semantics.systemDateTime.lastChangedAt: true
       last_change_at as ChangedAt,
       /* Associations */
       _question,
       _supplier,
       _rating
}
