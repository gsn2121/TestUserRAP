    CLASS zcl_gsn_temp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

      PUBLIC SECTION.
        INTERFACES : if_oo_adt_classrun.
        CLASS-METHODS: copy_data .
      PROTECTED SECTION.
      PRIVATE SECTION.
    ENDCLASS.



    CLASS zcl_gsn_temp IMPLEMENTATION.
      METHOD copy_data.

        SELECT * FROM /dmo/travel INTO TABLE @DATA(lt_travel_F) UP TO 100 ROWS.
        IF sy-subrc EQ 0.
          SELECT * FROM /dmo/booking FOR ALL ENTRIES IN @lt_travel_f WHERE travel_id = @lt_travel_F-travel_id INTO TABLE @DATA(lt_booking_F).
          DATA lt_booking TYPE TABLE OF ztgsn_booking.
          DATA lt_travel TYPE TABLE OF ztgsn_travel.
          lt_booking    = CORRESPONDING #( lt_booking_f ).
          lt_travel     = CORRESPONDING #( lt_travel_f ).
          DELETE FROM ztgsn_booking .
          DELETE FROM ztgsn_travel.
          INSERT ztgsn_booking FROM TABLE @lt_BOOKING.
          INSERT ztgsn_TRAVEL FROM TABLE @lt_TRAVEL.

          "ZTGSN_TRAVEL
        ENDIF.
      ENDMETHOD.

      METHOD if_oo_adt_classrun~main.
        me->copy_data( ).
      ENDMETHOD.

    ENDCLASS.
