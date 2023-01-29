view: test_sheet_table {
  sql_table_name: `cloudfit-saas-prd.moderato.test_sheet_table`
    ;;

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: no_ {
    type: number
    sql: ${TABLE}.`No` ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
