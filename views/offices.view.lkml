# The name of this view in Looker is "Offices"
view: offices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: classicmodels.offices ;;
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

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: office_code {
    type: string
    sql: ${TABLE}.officeCode ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: territory {
    type: string
    sql: ${TABLE}.territory ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
