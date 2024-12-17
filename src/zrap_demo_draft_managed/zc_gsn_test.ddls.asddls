@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View : Test'
@Metadata.allowExtensions: true
define root view entity ZC_GSN_TEST
  provider contract transactional_query as projection on ZI_GSN_TEST
{
    key Testid,
    Supplierid,
    Testname,
    Testprice,
    Currency,
    Rating,
    ChangedAt,
    /* Associations */
    
    _question : redirected to composition child ZC_GSN_QUES,
    _rating   : redirected to composition child ZC_GSN_RATE,
    _supplier : redirected to composition child ZC_GSN_SUPP
}
