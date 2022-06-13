# The name of this view in Looker is "Employees"
view: employees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: classicmodels.employees ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Email" in Explore.

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employee_number {
    type: number
    sql: ${TABLE}.employeeNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_employee_number {
    type: sum
    sql: ${employee_number} ;;
  }

  measure: average_employee_number {
    type: average
    sql: ${employee_number} ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}.extension ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.jobTitle ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: office_code {
    type: string
    sql: ${TABLE}.officeCode ;;
  }

  dimension: reports_to {
    type: number
    sql: ${TABLE}.reportsTo ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
