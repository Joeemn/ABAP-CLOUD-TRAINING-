CLASS zjmn_cl_lab_03_contract DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: lv_cntr_type TYPE c LENGTH 2. "Variable de instancia directa modificacion en cualquier evento o instancia de la clase

    METHODS: set_creation_date IMPORTING iv_creation_date TYPE zjmn_de_date.

  PROTECTED SECTION.
    DATA: lv_creation_date TYPE zjmn_de_date. "Similitud a la encapsulacion privada pero mas aplicable a Clases hija

  PRIVATE SECTION.
    DATA: lv_CLIENT TYPE string. "Opcion Idonea para ocultar variables fuera de la instancia de clase


ENDCLASS.



CLASS zjmn_cl_lab_03_contract IMPLEMENTATION.
  METHOD set_creation_date.

  ENDMETHOD.

ENDCLASS.
