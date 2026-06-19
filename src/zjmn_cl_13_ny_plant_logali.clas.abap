CLASS zjmn_cl_13_ny_plant_logali DEFINITION INHERITING FROM zjmn_cl_11_plant_logali
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_product_s1.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_13_ny_plant_logali IMPLEMENTATION.

  METHOD get_product_s1.

    DATA(lo_storage_location) = NEW zjmn_cl_12_storage_location_lo( ).
    lo_storage_location->product = 'CO'.

  ENDMETHOD.



ENDCLASS.
