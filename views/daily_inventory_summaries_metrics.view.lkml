view: daily_inventory_summaries_metrics {
  sql_table_name: `cloudfit-saas-prd.moderato.daily_inventory_summaries_metrics`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: available {
    label: "在庫数"
    type: number
    sql: ${TABLE}.available ;;
  }

  dimension: avg7_available {
    label: "過去7日平均在庫数"
    type: number
    sql: ${TABLE}.avg7_available ;;
  }

  dimension: blocked {
    label: "保留数"
    type: number
    sql: ${TABLE}.blocked ;;
  }

  dimension_group: created {
    label: "作成日時"
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
    datatype: datetime
    sql: ${TABLE}.created_at ;;
  }

  dimension: daily_avg_out_available {
    label: "日次平均出庫数"
    type: number
    sql: ${TABLE}.daily_avg_out_available ;;
  }

  dimension_group: date {
    label: "日付"
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
    sql: ${TABLE}.date ;;
  }

  dimension: exp_day_of_sortage {
    label: "残見込日数"
    type: number
    sql: ${TABLE}.exp_day_of_sortage ;;
  }

  dimension: identification_code {
    type: string
    sql: ${TABLE}.identification_code ;;
  }

  dimension: lag7_available {
    label: "7日前在庫数"
    type: number
    sql: ${TABLE}.lag7_available ;;
  }

  dimension: model_number {
    label: "品番"
    type: string
    sql: ${TABLE}.model_number ;;
  }

  dimension: month {
    label: "年月"
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: name {
    label: "商品名"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: object_code {
    type: string
    sql: ${TABLE}.object_code ;;
  }

  dimension: out7_available {
    label: "過去7日出庫数"
    type: number
    sql: ${TABLE}.out7_available ;;
  }

  dimension: received {
    label: "受入数"
    type: number
    sql: ${TABLE}.received ;;
  }

  dimension: sku_code {
    label: "SKUコード"
    type: string
    sql: ${TABLE}.sku_code ;;
  }

  dimension_group: updated {
    label: "更新日時"
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
    datatype: datetime
    sql: ${TABLE}.updated_at ;;
  }

  dimension: weekly_inventory_turnover {
    label: "在庫回転率（過去7日間）"
    type: number
    sql: ${TABLE}.weekly_inventory_turnover ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
  measure: m_available {
    label: "在庫数"
    type: sum
    sql: ${TABLE}.available ;;
  }

  measure: m_blocked {
    label: "保留数"
    type: sum
    sql: ${TABLE}.blocked ;;
  }

  measure: m_received {
    label: "入庫待ち数"
    type: sum
    sql: ${TABLE}.received ;;
  }
}
