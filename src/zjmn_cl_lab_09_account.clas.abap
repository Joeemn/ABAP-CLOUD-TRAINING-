CLASS zjmn_cl_lab_09_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_iban IMPORTING  iban TYPE string,
      get_iban EXPORTING  iban TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: iban       TYPE string,
          lv_cliente TYPE string.

ENDCLASS.



CLASS zjmn_cl_lab_09_account IMPLEMENTATION.

  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.

  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.

ENDCLASS.
