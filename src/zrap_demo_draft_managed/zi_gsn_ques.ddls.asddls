@EndUserText.label: 'Interface View : Question'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_GSN_QUES
  as select from ztb_ques_ass
  association to parent ZI_GSN_TEST as _test on $projection.testid = _test.Testid
  //  association [0..*] to ZCDS_ANS_ASS         as _answer  on $projection.questionid = _answer.Questionid

{
      @EndUserText.label: 'Question Id'
  key questionid,
      @ObjectModel.foreignKey.association: '_TEST'
      @EndUserText.label: 'Test Id'
      testid,
      @EndUserText.label: 'Question Text'
      questiontext,
      @EndUserText.label: 'Difficulty Level'
      difficultylevel,
      /* Associations */
      _test
}
