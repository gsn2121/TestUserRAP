@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View : Supp'

define view entity ZC_GSN_SUPP as projection on ZI_GSN_SUPP
{
    key supplierid,
    suppliername,
    testid,
    country,
    city,
    street,
    /* Associations */
    _test : redirected to parent ZC_GSN_TEST
}
