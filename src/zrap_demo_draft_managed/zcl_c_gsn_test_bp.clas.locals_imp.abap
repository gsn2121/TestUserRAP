CLASS lhc_test DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS augment_create FOR MODIFY
      IMPORTING entities FOR CREATE test.
    METHODS augment_update FOR MODIFY
      IMPORTING entities FOR UPDATE test.

ENDCLASS.

CLASS lhc_test IMPLEMENTATION.

  METHOD augment_create.
    LOOP AT entities INTO DATA(ls_enTITY1).


    ENDLOOP.

    MODIFY AUGMENTING ENTITY zI_gsn_test
              CREATE FIELDS ( Rating )
              WITH VALUE #( FOR ls_entity IN entities  (
                                 %cid       = ls_entity-%cid
                                 %key       = ls_entity-%key
*                                 %is_draft  = ls_entity-%is_draft
                                 Rating = 5
*                                 channel = zcl_supersession_helper=>gc_channel-both
                                 ChangedAt = cl_abap_context_info=>get_system_date( )
                                 %control-ChangedAt = if_abap_behv=>mk-on
                                 %control-Rating = if_abap_behv=>mk-on
                                  ) ).
  ENDMETHOD.

  METHOD augment_update.
  ENDMETHOD.

ENDCLASS.
