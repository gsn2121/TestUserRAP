CLASS lhc_test DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR test RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE test.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE test.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE test.

    METHODS read FOR READ
      IMPORTING keys FOR READ test RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK test.

    METHODS rba_Question FOR READ
      IMPORTING keys_rba FOR READ test\_Question FULL result_requested RESULT result LINK association_links.

    METHODS rba_Rating FOR READ
      IMPORTING keys_rba FOR READ test\_Rating FULL result_requested RESULT result LINK association_links.

    METHODS rba_Supplier FOR READ
      IMPORTING keys_rba FOR READ test\_Supplier FULL result_requested RESULT result LINK association_links.

    METHODS cba_Question FOR MODIFY
      IMPORTING entities_cba FOR CREATE test\_Question.

    METHODS cba_Rating FOR MODIFY
      IMPORTING entities_cba FOR CREATE test\_Rating.

    METHODS cba_Supplier FOR MODIFY
      IMPORTING entities_cba FOR CREATE test\_Supplier.
    METHODS precheck_create FOR PRECHECK
      IMPORTING entities FOR CREATE test.

ENDCLASS.

CLASS lhc_test IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Question.
  ENDMETHOD.

  METHOD rba_Rating.
  ENDMETHOD.

  METHOD rba_Supplier.
  ENDMETHOD.

  METHOD cba_Question.
  ENDMETHOD.

  METHOD cba_Rating.
  ENDMETHOD.

  METHOD cba_Supplier.
  ENDMETHOD.

  METHOD precheck_create.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ques DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ques.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ques.

    METHODS read FOR READ
      IMPORTING keys FOR READ ques RESULT result.

    METHODS rba_Test FOR READ
      IMPORTING keys_rba FOR READ ques\_Test FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ques IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Test.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_rate DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE rate.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE rate.

    METHODS read FOR READ
      IMPORTING keys FOR READ rate RESULT result.

    METHODS rba_Test FOR READ
      IMPORTING keys_rba FOR READ rate\_Test FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_rate IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Test.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_supp DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE supp.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE supp.

    METHODS read FOR READ
      IMPORTING keys FOR READ supp RESULT result.

    METHODS rba_Test FOR READ
      IMPORTING keys_rba FOR READ supp\_Test FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_supp IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Test.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_GSN_TEST DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS adjust_numbers REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_GSN_TEST IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD adjust_numbers.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
