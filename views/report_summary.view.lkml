view: report_summary {
  sql_table_name: `cloudfit-saas-prd.dataform.report_summary`
    ;;

  dimension: code {
    label: "SKU"
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: expected_remain_week_number {
    label: "週見込み残数"
    type: number
    sql: ${TABLE}.expected_remain_week_number ;;
  }

  dimension_group: from_day {
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
    sql: ${TABLE}.from_day ;;
  }

  dimension: inventory_turnover {
    label: "在庫回転率"
    type: number
    sql: ${TABLE}.inventory_turnover ;;
  }

  dimension: latest_available {
    label: "現在庫"
    type: number
    sql: ${TABLE}.latest_available ;;
  }

  dimension: predict_quantity_per_month {
    label: "月次見込み販売数"
    type: number
    sql: ${TABLE}.predict_quantity_per_month ;;
  }

  dimension: predict_sales_per_month {
    label: "月次見込み売上"
    type: number
    sql: ${TABLE}.predict_sales_per_month ;;
  }

  dimension: quantity_per_day {
    label: "一日あたり販売数"
    type: number
    sql: ${TABLE}.quantity_per_day ;;
  }

  dimension_group: scheduled {
    label: "入荷予定日"
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
    label: "入荷予定数"
    type: number
    sql: ${TABLE}.scheduled_qnantity ;;
  }

  dimension_group: to_day {
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
    sql: ${TABLE}.to_day ;;
  }

  dimension: total_quantity {
    label: "販売数"
    type: number
    sql: ${TABLE}.total_quantity ;;
  }

  dimension: total_sales {
    label: "売上"
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
