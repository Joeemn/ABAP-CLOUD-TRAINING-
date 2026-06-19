CLASS zjmn_cl_11_plant_logali DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_product RETURNING VALUE(rv_product) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_11_plant_logali IMPLEMENTATION.

  METHOD get_product.

    DATA(lo_storage_location) = NEW zjmn_cl_12_storage_location_lo( ).
    lo_storage_location->product = 'CO'.
    lo_storage_location->set_product( iv_product = 'LAOPTOP'  ).

  ENDMETHOD.

ENDCLASS.
