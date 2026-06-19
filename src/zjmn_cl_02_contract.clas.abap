CLASS zjmn_cl_02_contract DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_address,
             country     TYPE string,
             city        TYPE string,
             postal_code TYPE string,
             region      TYPE string,
             street      TYPE string,
             number      TYPE string,
           END OF ty_address,
           tty_address TYPE STANDARD TABLE OF ty_address.

    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE c LENGTH 3  VALUE 'USD',
                 eur TYPE c LENGTH 3 VALUE 'EUR',
               END OF cs_currency,
               cv_currency_usd TYPE string VALUE 'USD'.



    CLASS-DATA currency TYPE c LENGTH 3.
    CLASS-DATA: "company TYPE string VALUE 'Logali Group' READ-ONLY,
                company TYPE string READ-ONLY.

    DATA region TYPE string.
    METHODS set_client IMPORTING iv_client   TYPE string
                                 iv_location TYPE string OPTIONAL
                       EXPORTING ev_status   TYPE string
                       CHANGING  cv_process  TYPE string OPTIONAL.

    METHODS get_client EXPORTING ev_client TYPE string.

    CLASS-METHODS:
      set_cntr_type IMPORTING iv_cntr TYPE string,
      get_cntr_type EXPORTING ev_cntr TYPE string.

    METHODS get_client_name IMPORTING iv_client_id          TYPE string
                            RETURNING VALUE(rv_client_name) TYPE string.

    METHODS set_address IMPORTING it_address TYPE tty_address.

    METHODS set_sales_og IMPORTING sales_org TYPE string.

    METHODS get_sales_og EXPORTING sales_org TYPE string.

* Cuando la definicion es CREATE PRIVATE la instancia solo se puede cargar con estatico ya que es una instancia interna dentro de la misma clase
    CLASS-METHODS get_instance EXPORTING er_instance TYPE REF TO zjmn_cl_02_contract.

  PROTECTED SECTION.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.
    DATA client TYPE string.
    DATA: sales_org TYPE string.

    CLASS-DATA contract_type TYPE string.

ENDCLASS.



CLASS zjmn_cl_02_contract IMPLEMENTATION.


  METHOD set_client.

    client = iv_client.
    ev_status = 'OK'.

    IF  iv_location IS SUPPLIED. " Si se ha proporcionado REALMENTE EL PRAMETRO OPCIONAL , ese parametro o no a diferencia del Is initial QUE PUEDE PASAR UN ESPACIO O VALOR CERO

      cv_process = 'STARTED'.

    ELSE.

      cv_process = 'NOT STARTED'.

    ENDIF.

    company = 'Logali Group'.
  ENDMETHOD.


  METHOD get_client.

    ev_client = client.

  ENDMETHOD.


  METHOD get_cntr_type.

    ev_cntr = contract_type.

  ENDMETHOD.


  METHOD set_cntr_type.

    contract_type = iv_cntr.

  ENDMETHOD.


  METHOD get_client_name.

    CASE iv_client_id.
      WHEN '01'.
        rv_client_name = 'Client name 01'.
      WHEN '02'.
        rv_client_name = 'Client name 02'.
    ENDCASE.

  ENDMETHOD.


  METHOD set_address.



  ENDMETHOD.


  METHOD get_sales_og.

    sales_org = me->sales_org.

  ENDMETHOD.


  METHOD set_sales_og.

    me->sales_org = sales_org.
    me->set_address( it_address = VALUE #( ( country = 'ES' )  ) ).

  ENDMETHOD.

  METHOD get_instance.

    er_instance = NEW zjmn_cl_02_contract( ).

  ENDMETHOD.

ENDCLASS.
