CLASS zjmn_cl_03_employee_logali DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_employee_id TYPE string. "OPTIONAL.

    CLASS-METHODS class_constructor.

    METHODS get_employee_id RETURNING VALUE(rv_employee_id) TYPE string.

    CLASS-DATA: company TYPE string READ-ONLY,
                log     TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: employee_id TYPE string.

ENDCLASS.



CLASS zjmn_cl_03_employee_logali IMPLEMENTATION.

  METHOD constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }- Instance Constructor { employee_id } -->|.
  ENDMETHOD.

  METHOD get_employee_id.
    rv_employee_id = me->employee_id.
  ENDMETHOD.

  METHOD class_constructor.
*    zjmn_cl_03_employee_logali=>company = 'LOGALI GROUP'.
    company = 'LOGALI GROUP'.
    log = |{ log }- Stactic Constructor -->|.
  ENDMETHOD.

ENDCLASS.
