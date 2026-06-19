CLASS zjmn_cl_lab_04_person DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_age IMPORTING iv_edad TYPE i,
      get_age EXPORTING ev_edad TYPE i.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA: lv_age TYPE i.

ENDCLASS.



CLASS ZJMN_CL_LAB_04_PERSON IMPLEMENTATION.


  METHOD get_age.

    ev_edad = lv_age.

  ENDMETHOD.


  METHOD set_age.

    lv_age = iv_edad.

  ENDMETHOD.
ENDCLASS.
