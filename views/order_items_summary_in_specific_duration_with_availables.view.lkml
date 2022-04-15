view: order_items_summary_in_specific_duration_with_availables {
  sql_table_name: `cloudfit-saas-prd.dataform.order_items_summary_in_specific_duration_with_availables`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: inventory_turnover {
    type: number
    sql: ${TABLE}.inventory_turnover ;;
  }

  dimension: predict_quantity_per_month {
    type: number
    sql: ${TABLE}.predict_quantity_per_month ;;
  }

  dimension: predict_sales_per_month {
    type: number
    sql: ${TABLE}.predict_sales_per_month ;;
  }

  dimension: quantity_per_day {
    type: number
    sql: ${TABLE}.quantity_per_day ;;
  }

  dimension: total_quantity {
    type: number
    sql: ${TABLE}.total_quantity ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
