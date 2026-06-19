CLASS zjmn_cl_lab_05_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      validate_flight IMPORTING iv_carrier_id    TYPE /dmo/carrier_id
                                iv_connection_id TYPE /dmo/connection_id
                      RETURNING VALUE(rv_value)  TYPE abap_boolean.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS ZJMN_CL_LAB_05_FLIGHT IMPLEMENTATION.


  METHOD validate_flight.

    SELECT SINGLE carrier_id, connection_id
    FROM /dmo/flight
    WHERE carrier_id EQ @iv_carrier_id
      AND connection_id EQ @iv_connection_id
    INTO @DATA(ls_count).
    IF sy-subrc EQ 0.
      rv_value = abap_true.
    ELSE.
      rv_value = abap_false.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
