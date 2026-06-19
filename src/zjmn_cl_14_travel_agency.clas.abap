CLASS zjmn_cl_14_travel_agency DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zjmn_if_01_agency_logali.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: agency_type TYPE string.


ENDCLASS.



CLASS zjmn_cl_14_travel_agency IMPLEMENTATION.

  METHOD zjmn_if_01_agency_logali~set_name.
    me->agency_type = iv_type.
  ENDMETHOD.

  METHOD zjmn_if_01_agency_logali~get_name.
    rv_type = me->agency_type.
  ENDMETHOD.

  METHOD zjmn_if_01_agency_logali~set_address.
    zjmn_if_01_agency_logali~agency_address = iv_address.
  ENDMETHOD.

ENDCLASS.
