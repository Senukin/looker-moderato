view: report_summary_group_by_categories {
  derived_table: {
    sql:
      SELECT
        product_type,
        _week,
        FLOOR(SUM(total_sales)) as total_sales,
        FLOOR(SUM(total_quantity)) as total_quantity,
        FLOOR(SUM(quantity_per_day)) as quantity_per_day,
        FLOOR(SUM(predict_quantity_per_month)) as predict_quantity_per_month,
        FLOOR(SUM(expected_remain_week_number)) as expected_remain_week_number,
        FLOOR(SUM(inventory_turnover)) as inventory_turnover,
        FLOOR(SUM(latest_available)) as latest_available,
      FROM
        `cloudfit-saas-prd.dataform.report_summary`
      GROUP BY
        product_type,_week
      ORDER BY
        product_type,_week ;;
  }
  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }
  dimension: week {
    type: string
    sql: FORMAT_DATE("%x",  ${TABLE}._week) ;;
  }
  measure: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }
  measure: total_quantity {
    type: number
    sql: ${TABLE}.total_quantity ;;
  }
  measure: quantity_per_day {
    type: number
    sql: ${TABLE}.quantity_per_day ;;
  }
  measure: predict_quantity_per_month {
    type: number
    sql: ${TABLE}.predict_quantity_per_month ;;
  }
  measure: expected_remain_week_number {
    type: number
    sql: ${TABLE}.expected_remain_week_number ;;
  }
  measure: inventory_turnover {
    type: number
    sql: ${TABLE}.inventory_turnover ;;
  }
  measure: latest_available {
    type: number
    sql: ${TABLE}.latest_available ;;
  }
}
