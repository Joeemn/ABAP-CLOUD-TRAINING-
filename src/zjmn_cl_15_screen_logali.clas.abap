CLASS zjmn_cl_15_screen_logali DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zjmn_if_02_eu_unit_logali,
      zjmn_if_03_en_unit_logali.

    METHODS constructor IMPORTING iv_en_unit TYPE zfloat.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: en_unit TYPE zfloat.

ENDCLASS.



CLASS zjmn_cl_15_screen_logali IMPLEMENTATION.

  METHOD zjmn_if_02_eu_unit_logali~dimensions_centimeters.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.

  METHOD zjmn_if_03_en_unit_logali~dimensions_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.

  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.

ENDCLASS.
