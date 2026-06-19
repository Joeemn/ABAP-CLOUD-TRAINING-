CLASS zjmn_cl_lab_07_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA:
    birth_date TYPE zjmn_de_date READ-ONLY.

    METHODS set_birth_date .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_lab_07_student IMPLEMENTATION.

  METHOD set_birth_date.
    zjmn_cl_lab_07_student=>birth_date = sy-datum.
  ENDMETHOD.

ENDCLASS.
