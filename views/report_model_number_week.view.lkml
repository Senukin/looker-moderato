view: report_model_number_week {
  sql_table_name: `cloudfit-saas-prd.dataform.report_model_number_week`
    ;;

  dimension: model_number {
    label: "型番"
    type: string
    sql: ${TABLE}.model_number ;;
  }

  dimension: product_name {
    label: "商品名"
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: category {
    label: "カテゴリ"
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: series_category {
    label: "シリーズ"
    type: string
    sql: ${TABLE}.series_category ;;
  }

  dimension: product_positioning_updated {
    label: "商品位置づけ"
    type: string
    sql: ${TABLE}.product_positioning_updated ;;
  }


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

  dimension: _week_str {
    label: "開始日"
    type: string
    sql: FORMAT_DATE("%y/%m/%d",  ${TABLE}._week) ;;
  }


  measure: total_quantity {
    label: "販売数"
    type: sum
    sql: ${TABLE}.total_quantity ;;
  }

  measure: quantity_per_day {
    label: "日次販売数"
    value_format: "0.00"
    type: sum
    sql: ${TABLE}.quantity_per_day ;;
  }

  measure: stock_cnt {
    label: "平均在庫数"
    type: average
    value_format: "0"
    sql: ${TABLE}.stock_cnt ;;
  }

  measure: price {
    label: "価格"
    type: average
    sql: ${TABLE}.price ;;
  }

  measure: total_sales {
    label: "売上"
    type: sum
    sql: ${TABLE}.total_sales ;;
  }

  measure: predict_quantity_per_month {
    label: "1ヶ月当たりの見込み数量"
    type: sum
    value_format: "0"
    sql: ${TABLE}.predict_quantity_per_month ;;
  }

  measure: predict_sales_per_month {
    label: "1ヶ月当たりの見込み売上"
    type: sum
    value_format: "0"
    sql: ${TABLE}.predict_sales_per_month ;;
  }

  measure: inventory_turnover {
    label: "在庫回転率"
    type: average
    value_format: "0.00"
    sql: ${TABLE}.inventory_turnover ;;
  }

  measure: budget_appointment {
    label: "SKU別予算"
    type: average
    value_format: "0"
    sql: ${TABLE}.sum_budget_value_apportionment_per_week ;;
  }

  measure: expected_landing_percent {
    label: "着地見込み率"
    type: sum
    value_format: "0.00"
    sql: ${TABLE}.probability_rate_per_week ;;
  }

  measure: before_week_total_quantity {
    label: "前週販売数"
    type: sum
    sql: ${TABLE}.before_week_total_quantity ;;
  }

  measure: compared_to_the_previous_week {
    label: "対先週伸び"
    value_format: "0.00"
    type: average
    sql: ${TABLE}.compared_to_the_previous_week ;;
  }

  # measure: expected_remain_week_number {
  #   label: "残見込週数"
  #   type: average
  #   sql: ${TABLE}.expected_remain_week_number ;;
  # }

  # dimension_group: scheduled {
  #   label: "入荷予定日"
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}.scheduled_date ;;
  # }


  measure: current_stock_count {
    label: "現在庫"
    type: average
    sql: ${TABLE}.current_stock_count ;;
  }

  measure: scheduled_date {
    label: "入荷予定日"
    type: date
    sql: min(${TABLE}.scheduled_date) ;;
  }

  measure: scheduled_quantity {
    label: "入荷予定数"
    type: average
    sql: ${TABLE}.scheduled_instock_qnantity ;;
  }

}
