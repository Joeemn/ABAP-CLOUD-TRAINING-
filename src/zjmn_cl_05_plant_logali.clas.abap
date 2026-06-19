CLASS zjmn_cl_05_plant_logali DEFINITION INHERITING FROM zjmn_cl_04_company_logali
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: products TYPE string.

    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_products  TYPE string.

    METHODS set_company_code REDEFINITION.  " IMPORTING iv_company_code TYPE string .


  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA: company_atr TYPE string.

ENDCLASS.



CLASS zjmn_cl_05_plant_logali IMPLEMENTATION.

  METHOD constructor.
    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.
  ENDMETHOD.

  METHOD set_company_code.
    me->company_code = 'ABCD'.
    super->set_company_code( iv_company_code = iv_company_code )."En la redefinicion se mantiene la firma del padre
*    me->company_code = 'ABCD'. "Fuerza poner el valor de la redefinicion
  ENDMETHOD.

ENDCLASS.
