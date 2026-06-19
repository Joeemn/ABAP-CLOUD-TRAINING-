INTERFACE zjmn_if_05_sales_order_logali
  PUBLIC .

  INTERFACES zjmn_if_04_document_logali.

  METHODS create_order IMPORTING iv_order_id TYPE string.

ENDINTERFACE.
