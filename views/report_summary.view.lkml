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

  dimension: inventory_turnover {
    label: "在庫回転率"
    type: number
    sql: ${TABLE}.inventory_turnover ;;
  }

  measure: price {
    label: "価格"
    type: average
    sql: ${TABLE}.price ;;
  }

  dimension: latest_available {
    label: "現在庫"
    type: number
    sql: ${TABLE}.latest_available ;;
  }

  dimension: predict_quantity_per_month {
    label: "1ヶ月当たりの見込み数量"
    type: number
    sql: ${TABLE}.predict_quantity_per_month ;;
  }

  dimension: predict_sales_per_month {
    label: "一ヶ月当たりの見込み売上"
    type: number
    sql: ${TABLE}.predict_sales_per_month ;;
  }

  dimension: product_type {
    label: "カテゴリー"
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: quantity_per_day {
    label: "一日当たり販売数"
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
    drill_fields: [article_name]
  }
}
