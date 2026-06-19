CLASS zjmn_cl_01_exec_logali DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjmn_cl_01_exec_logali IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


* ALIASES RENOMBRAR LOS METODOS DE INTERFACES UNICAS O ANIDADAS PARA LLAMADO DIRECTO DEL ALIAS Y NO TIPEAR TODO
    DATA(lo_bp) = NEW zjmn_cl_17_bp_logali( ).
    lo_bp->set_company_type( ).
    lo_bp->zjmn_if_07_company_logali~group( ).


*MULTIPLE INTERFAZ
***    DATA(lo_sales_department) = NEW zjmn_cl_16_department_logali( ).
***    lo_sales_department->zjmn_if_04_document_logali~set_sales_doc( iv_sales = '11123' ).
***    lo_sales_department->zjmn_if_05_sales_order_logali~create_order( iv_order_id = '1455D' ).

* Solo una Interfaz
***    DATA(lo_screen) = NEW zjmn_cl_15_screen_logali( iv_en_unit = '22' ).
***    out->write( lo_screen->zjmn_if_02_eu_unit_logali~dimensions_centimeters( ) ).
***    out->write( lo_screen->zjmn_if_03_en_unit_logali~dimensions_inches( ) ).

***********************************
*CLASE 3 Introduccion Interface   *
***********************************
***    DATA(lo_travel_agency) = NEW zjmn_cl_14_travel_agency( ).
***
***    lo_travel_agency->zjmn_if_01_agency_logali~set_name( iv_type = 'Gate2Fly.com' ).
***    out->write( lo_travel_agency->zjmn_if_01_agency_logali~get_name( ) ).
***
***    zjmn_cl_14_travel_agency=>zjmn_if_01_agency_logali~set_address( iv_address = 'Madrid, Spain' ).


*******************************
*CLASE 2 Narrowing/Wid cast   *
*******************************
****    DATA(lo_animal) = NEW zjmn_cl_07_animal_logali( ).
****    DATA(lo_lion) = NEW zjmn_cl_08_lion_logali( ).
****
****    out->write( lo_animal->walk( ) ).
****    out->write( lo_lion->walk( ) ).
****
****    lo_animal = lo_lion.
****    out->write( 'Narrowing (UP CAST)' ).
****    out->write( lo_animal->walk( ) ).
****    out->write( lo_lion->walk( ) ).
****
****
****    TRY.
****        lo_lion ?= lo_animal.
****
****      CATCH cx_sy_move_cast_error.
****        out->write( 'Casting Error' ).
****        RETURN.
****    ENDTRY.
****
****    out->write( 'Widenig Casting (Down CAST)' ).
****    out->write( lo_animal->walk( ) ).
****    out->write( lo_lion->walk( ) ).

************************************
*CLASE 2 HERENCIAS Y CONSTRUCTORES *
************************************
***    DATA(lo_company)           = NEW zjmn_cl_04_company_logali( iv_quotation = 'Q1' ).
***    DATA(lo_plant)             = NEW zjmn_cl_05_plant_logali( iv_quotation = 'Q2' iv_products = 'P2' ).
***    DATA(lo_storage_location)  = NEW zjmn_cl_06_storage_logali( iv_quotation = 'Q3'  iv_products = 'P3' ).
***
***
***    lo_company->set_company_code( iv_company_code = '1234' ).
***    lo_company->set_currency( iv_currency = 'USD' ).
***    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
***    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).
***    out->write( |Company - { lv_company_code } - { lv_currency } | ).
***
***
***    lo_plant->set_company_code( iv_company_code = '3454' ).
***    lo_plant->set_currency( iv_currency = 'EUR' ).
***    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code ).
***    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).
***    out->write( |Plant - { lv_company_code } - { lv_currency } | ).
***
***
***    lo_storage_location->set_company_code( iv_company_code = '7832' ).
***    lo_storage_location->set_currency( iv_currency = 'PEN' ).
***    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code ).
***    lo_storage_location->get_currency( IMPORTING ev_currency = lv_currency ).
***    out->write( |Store Location - { lv_company_code } - { lv_currency } | ).


*********************
*CLASE 2 INSTANCIAS *
*********************
****    out->write( zjmn_cl_03_employee_logali=>log ).
****
****    DATA(lo_employee) = NEW zjmn_cl_03_employee_logali( iv_employee_id = '01' ).
*****    lo_employee->get_employee_id( RECEIVING rv_employee_id = DATA(lv_employee_id) ).
*****    out->write( lo_employee->get_employee_id( ) ).
****    out->write( zjmn_cl_03_employee_logali=>log ).
****
****
****    DATA(lo_employee_2) = NEW zjmn_cl_03_employee_logali( iv_employee_id = '02' ).
*****    out->write( lo_employee_2->get_employee_id( ) ).
****
*****Constructor estatico
*****    out->write( zjmn_cl_03_employee_logali=>company ).
****    out->write( zjmn_cl_03_employee_logali=>log ).


**********************
*CLASE 1 FUNDAMENTOS *
**********************
****    DATA(lo_contract)  = NEW zjmn_cl_02_contract( ).
****    DATA(lo_contract2) = NEW zjmn_cl_02_contract( ).
***
***    " Si se declara privado se intancia dentro de la clase
***    zjmn_cl_02_contract=>get_instance( IMPORTING er_instance = DATA(lo_contract) ).
***    zjmn_cl_02_contract=>get_instance( IMPORTING er_instance = DATA(lo_contract2) ).
***
***    DATA: lv_process TYPE string,
***
***          lt_adress  TYPE zjmn_cl_02_contract=>tty_address,
***          ls_adress  TYPE zjmn_cl_02_contract=>ty_address.
***
***    IF lo_contract IS BOUND.
***
***      lo_contract->set_client(
***        EXPORTING
***          iv_client   = 'Logali'
***          iv_location = space
***        IMPORTING
***          ev_status   = DATA(lv_status)
***        CHANGING
***          cv_process  = lv_process
***      ).
***
***      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client)  ).
***      lo_contract->region = 'EU'.
***    ENDIF.
***
***    zjmn_cl_02_contract=>set_cntr_type( iv_cntr = 'Construction' ).
***
***    zjmn_cl_02_contract=>get_cntr_type(  IMPORTING  ev_cntr = DATA(lv_cntr)  ).
***
***    zjmn_cl_02_contract=>currency = zjmn_cl_02_contract=>cs_currency-usd.  "zjmn_cl_02_contract=>cv_currency_usd.
***
****    zjmn_cl_02_contract=>company = 'INKA COLA'. " se le puede cambiar por que esta en la encapsulacion publica / El read only no permite suscribir luego solo utilizar
***    out->write( zjmn_cl_02_contract=>company ).
***
**** Metodo funcional solo aceptan un parametro tipo returning
***    DATA(lv_client_name) = lo_contract->get_client_name( EXPORTING  iv_client_id   = '01' ).
****      RECEIVING
****        rv_client_name = DATA(lv_client_name)
****    ).
***
***    IF NOT lo_contract->get_client_name( EXPORTING  iv_client_id   = '01' ) EQ 'PRUEBA'.
***
***      out->write( lo_contract->get_client_name( iv_client_id = '01' ) ).
***
***    ENDIF.
***
***    out->write( lo_contract->currency ).
***    out->write( lo_contract2->currency ).
***
***    out->write( EXPORTING data = | { lv_client } - { lv_status } - { lv_process } - Region : { lo_contract->region } - { lv_cntr } | ).
***    out->write( EXPORTING data   =  lv_cntr  ).

  ENDMETHOD.
ENDCLASS.
