# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: classicmodels.products ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Buy Price" in Explore.

  dimension: buy_price {
    type: number
    sql: ${TABLE}.buyPrice ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_buy_price {
    type: sum
    sql: ${buy_price} ;;
  }

  measure: average_buy_price {
    type: average
    sql: ${buy_price} ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.MSRP ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.productCode ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.productDescription ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.productLine ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: product_scale {
    type: string
    sql: ${TABLE}.productScale ;;
  }

  dimension: product_vendor {
    type: string
    sql: ${TABLE}.productVendor ;;
  }

  dimension: quantity_in_stock {
    type: number
    sql: ${TABLE}.quantityInStock ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
