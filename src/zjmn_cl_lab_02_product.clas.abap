CLASS zjmn_cl_lab_02_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS :

      set_product       IMPORTING iv_product TYPE matnr,
      set_creation_date IMPORTING iv_creation_date TYPE zjmn_de_date.


  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: lv_product       TYPE matnr,
          lv_creation_date TYPE zjmn_de_date.

ENDCLASS.



CLASS ZJMN_CL_LAB_02_PRODUCT IMPLEMENTATION.


  METHOD set_creation_date.

  ENDMETHOD.


  METHOD set_product.

  ENDMETHOD.
ENDCLASS.
