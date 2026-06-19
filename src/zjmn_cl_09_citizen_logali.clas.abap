CLASS zjmn_cl_09_citizen_logali DEFINITION
  PUBLIC
*  FINAL
  CREATE PRIVATE "PROTECTED.
  GLOBAL FRIENDS zjmn_cl_10_citizen_logali.

  PUBLIC SECTION.

    METHODS set_id FINAL IMPORTING iv_id TYPE i.
    METHODS get_instance RETURNING VALUE(ro) TYPE REF TO zjmn_cl_09_citizen_logali.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_09_citizen_logali IMPLEMENTATION.


  METHOD set_id.

    DATA(lo_citizen) = NEW zjmn_cl_09_citizen_logali( ).

  ENDMETHOD.

  METHOD get_instance.

    ro = NEW zjmn_cl_09_citizen_logali( ).

  ENDMETHOD.

ENDCLASS.
