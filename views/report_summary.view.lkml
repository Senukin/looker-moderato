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

  dimension: _week_str {
    label: "開始日"
    type: string
    sql: FORMAT_DATE("%x",  ${TABLE}._week) ;;
  }

  dimension: article_name {
    label: "商品名"
    type: string
    sql: ${TABLE}.article_name ;;
  }

  dimension: code {
    label: "商品コード"
    type: string
    sql: ${TABLE}.code ;;
  }



  dimension: expected_remain_week_number {
    label: "残見込み週数"
    type: number
    sql: ${TABLE}.expected_remain_week_number ;;
  }

  dimension: identification_code {
    label: "バーコード"
    type: string
    sql: ${TABLE}.identification_code ;;
  }

  measure: inventory_turnover {
    label: "在庫回転率"
    type: average
    value_format: "0.00"
    sql: ${TABLE}.inventory_turnover ;;
  }

  measure: price {
    label: "価格"
    type: average
    sql: ${TABLE}.price ;;
  }

  measure: latest_available {
    label: "現在庫"
    type: sum
    sql: ${TABLE}.latest_available ;;
  }

  measure: predict_quantity_per_month {
    label: "1ヶ月当たりの見込み数量"
    type: sum
    sql: ${TABLE}.predict_quantity_per_month ;;
  }

  measure: predict_sales_per_month {
    label: "一ヶ月当たりの見込み売上"
    type: sum
    sql: ${TABLE}.predict_sales_per_month ;;
  }

  dimension: product_type {
    label: "カテゴリー"
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: model_number {
    label: "型番"
    type: string
    sql: ${TABLE}.model_number ;;
  }

  measure: quantity_per_day {
    label: "一日当たり販売数"
    value_format: "0.00"
    type: sum
    sql: ${TABLE}.quantity_per_day ;;
  }

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

  measure: scheduled {
      label: "入荷予定日"
      type: string
      sql: ${TABLE}.scheduled_date ;;
    }

  measure: scheduled_qnantity {
    label: "入荷予定数"
    type: sum
    sql: cloudfit-saas-prd.dataform.report_summary.scheduled_qnantity ;;
  }

  measure: total_quantity {
    label: "販売数"
    type: sum
    sql: ${TABLE}.total_quantity ;;
  }

  measure: before_week_total_quantity {
    label: "前週販売数"
    type: sum
    sql: ${TABLE}.before_week_total_quantity ;;
  }

  measure: total_sales {
    label: "売上"
    type: sum
    sql: ${TABLE}.total_sales ;;
  }

  measure: budget {
    label: "予算"
    type: average
    sql: ${TABLE}.budget_value ;;
  }

  measure: expected_landing_percent {
    label: "着地見込み率"
    type: sum
    value_format: "0.00"
    sql: ${TABLE}.expected_landing_percent ;;
  }

  measure: compared_to_the_previous_week {
    label: "対先週伸び"
    value_format: "0.00"
    type: average
    sql: ${TABLE}.compared_to_the_previous_week ;;
  }


  measure: count {
    type: count
    drill_fields: [article_name]
  }
}
