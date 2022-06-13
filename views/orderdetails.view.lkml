# The name of this view in Looker is "Orderdetails"
view: orderdetails {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: classicmodels.orderdetails ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Order Line Number" in Explore.

  dimension: order_line_number {
    type: number
    sql: ${TABLE}.orderLineNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_line_number {
    type: sum
    sql: ${order_line_number} ;;
  }

  measure: average_order_line_number {
    type: average
    sql: ${order_line_number} ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.orderNumber ;;
  }

  dimension: price_each {
    type: number
    sql: ${TABLE}.priceEach ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.productCode ;;
  }

  dimension: quantity_ordered {
    type: number
    sql: ${TABLE}.quantityOrdered ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
