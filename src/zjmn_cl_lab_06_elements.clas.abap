CLASS zjmn_cl_lab_06_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:BEGIN OF ty_elem_objects,
            class     TYPE string,
            instance  TYPE string,
            reference TYPE string,
          END OF ty_elem_objects.
    DATA: ms_object TYPE ty_elem_objects.
    CONSTANTS : c_var1 TYPE c LENGTH 5 VALUE 'HOLA',
                c_var2 TYPE c LENGTH 5 VALUE 'COMO',
                c_var3 TYPE c LENGTH 5 VALUE 'TE',
                c_var4 TYPE c LENGTH 5 VALUE 'VA'.

    METHODS set_object.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_lab_06_elements IMPLEMENTATION.

  METHOD set_object.

    ms_object-class = to_upper( 'zjmn_cl_lab_06_elements' ).
    ms_object-instance = to_upper( 'zjmn_cl_lab_01_ejec' ).
    ms_object-reference = 'LO_ELEMENTS'.

  ENDMETHOD.

ENDCLASS.
