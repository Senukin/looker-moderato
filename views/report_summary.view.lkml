view: report_summary {
  sql_table_name: `cloudfit-saas-prd.dataform.report_summary`
    ;;

  dimension_group: _week {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._week ;;
  }

  dimension: article_name {
    type: string
    sql: ${TABLE}.article_name ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: expected_remain_week_number {
    type: number
    sql: ${TABLE}.expected_remain_week_number ;;
  }

  dimension: identification_code {
    type: string
    sql: ${TABLE}.identification_code ;;
  }

  dimension: inventory_turnover {
    type: number
    sql: ${TABLE}.inventory_turnover ;;
  }

  dimension: latest_available {
    type: number
    sql: ${TABLE}.latest_available ;;
  }

  dimension: predict_quantity_per_month {
    type: number
    sql: ${TABLE}.predict_quantity_per_month ;;
  }

  dimension: predict_sales_per_month {
    type: number
    sql: ${TABLE}.predict_sales_per_month ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: quantity_per_day {
    type: number
    sql: ${TABLE}.quantity_per_day ;;
  }

  dimension_group: scheduled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.scheduled_date ;;
  }

  dimension: scheduled_qnantity {
    type: number
    sql: ${TABLE}.scheduled_qnantity ;;
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
    drill_fields: [article_name]
  }
}
