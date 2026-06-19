CLASS zjmn_cl_lab_01_ejec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_lab_01_ejec IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Instanciar Clase Person
    DATA(lo_person) = NEW zjmn_cl_lab_04_person( ).
    DATA(lo_flight) = NEW zjmn_cl_lab_05_flight( ).
    DATA(lo_element) = NEW zjmn_cl_lab_06_elements( ).
    DATA(lo_student) = NEW zjmn_cl_lab_07_student( ).
    DATA(lo_account) = NEW zjmn_cl_lab_09_account( ).


* Datos Globales
    DATA: gs_elem_object TYPE zjmn_cl_lab_06_elements=>ty_elem_objects.

*// PERSON
    lo_person->set_age( iv_edad = '33' ).
    lo_person->get_age( IMPORTING ev_edad = DATA(lv_age)  ).

*// FLIGHT
    lo_flight->validate_flight( EXPORTING iv_carrier_id    = 'AA'
                                          iv_connection_id = '1111' "'0322'
                                RECEIVING rv_value         = DATA(lv_validate_flight)  ).

* Impresiones:
    out->write(  EXPORTING data = lv_age ).
    out->write(  EXPORTING data = COND #( WHEN lv_validate_flight EQ abap_true THEN 'VERDAD'
                                          WHEN lv_validate_flight EQ abap_false THEN 'FALSO' ) ).
    lo_element->set_object( ).
    out->write( |{ lo_element->ms_object-class } - { lo_element->ms_object-instance } - { lo_element->ms_object-reference }  | ).
    out->write( |{ zjmn_cl_lab_06_elements=>c_var1 } - { zjmn_cl_lab_06_elements=>c_var2 } - { zjmn_cl_lab_06_elements=>c_var3 } - { zjmn_cl_lab_06_elements=>c_var4 } | ).

    lo_student->set_birth_date( ).
*    zjmn_cl_lab_07_student=>birth_date = '10102026'.  "No es posible por el uso del Read Only.
    out->write( zjmn_cl_lab_07_student=>birth_date ).

    zjmn_cl_lab_08_work_record=>open_new_record( iv_date       = sy-datum
                                                 iv_first_name = 'Joel'
                                                 iv_last_name  = 'Mayhua'
                                                 iv_surname    = 'Sur Andino'  ).

    lo_account->set_iban( iban = '45694' ).
    lo_account->get_iban( IMPORTING  iban = DATA(lv_iban) ).
    out->write( lv_iban ).

  ENDMETHOD.
ENDCLASS.
