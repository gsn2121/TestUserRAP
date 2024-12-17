@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View : Rate'

define view entity ZC_GSN_RATE as projection on ZI_GSN_RATE
{
    key Ratingid,
    Testid,
    Ratingvalue,
    Review,
    Reviewername,
    /* Associations */
    _test : redirected to parent ZC_GSN_TEST
}
