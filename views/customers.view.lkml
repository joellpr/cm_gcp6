# The name of this view in Looker is "Customers"
view: customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: classicmodels.customers ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address Line1" in Explore.

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.addressLine1 ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.addressLine2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: contact_first_name {
    type: string
    sql: ${TABLE}.contactFirstName ;;
  }

  dimension: contact_last_name {
    type: string
    sql: ${TABLE}.contactLastName ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.creditLimit ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customerName ;;
  }

  dimension: customer_number {
    type: number
    sql: ${TABLE}.customerNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_number {
    type: sum
    sql: ${customer_number} ;;
  }

  measure: average_customer_number {
    type: average
    sql: ${customer_number} ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: sales_rep_employee_number {
    type: number
    sql: ${TABLE}.salesRepEmployeeNumber ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [contact_first_name, contact_last_name, customer_name]
  }
}
