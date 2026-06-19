CLASS zjmn_cl_04_company_logali DEFINITION
  PUBLIC
  CREATE PUBLIC . "Clase base se quito el FINAL

  PUBLIC SECTION.

    METHODS:
      set_company_code IMPORTING iv_company_code TYPE string,
      get_company_code EXPORTING ev_company_code TYPE string,

      set_currency IMPORTING iv_currency TYPE string,
      get_currency EXPORTING ev_currency TYPE string.

    METHODS constructor IMPORTING iv_quotation TYPE string.

    DATA: quotation TYPE string READ-ONLY.
*    DATA: company_atr TYPE string.

  PROTECTED SECTION.

* AQUI ES LO QUE HEREDARAN LAS CLASES HIJAS EN EL PROTECT
    DATA: company_code TYPE c LENGTH 4,
          currency     TYPE c LENGTH 3.

  PRIVATE SECTION.
      DATA: company_atr TYPE string.

ENDCLASS.



CLASS zjmn_cl_04_company_logali IMPLEMENTATION.
  METHOD get_company_code.
    ev_company_code = me->company_code.
  ENDMETHOD.

  METHOD get_currency.
    ev_currency = me->currency.
  ENDMETHOD.

  METHOD set_company_code.
    me->company_code = iv_company_code.
  ENDMETHOD.

  METHOD set_currency.
    me->currency = iv_currency.
  ENDMETHOD.

  METHOD constructor.
    me->quotation = iv_quotation.
  ENDMETHOD.

ENDCLASS.
