CLASS zjmn_cl_07_animal_logali DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS walk RETURNING VALUE(rv_walk) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_07_animal_logali IMPLEMENTATION.
  METHOD walk.
    rv_walk = 'The animal walks'.
  ENDMETHOD.

ENDCLASS.
