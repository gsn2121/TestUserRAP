@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View : Ques'

@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_GSN_QUES as projection on ZI_GSN_QUES

{
    key questionid,
    testid,
    questiontext,
    difficultylevel,
    /* Associations */
    _test : redirected to parent ZC_GSN_TEST
}
