view: daily_inventory_summaries {
  sql_table_name: `cloudfit-saas-prd.moderato.daily_inventory_summaries`
    ;;
  drill_fields: [id]

  dimension: id {
    label: "ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: available {
    label: "在庫数"
    type: number
    sql: ${TABLE}.available ;;
  }

  dimension: blocked {
    label: "保留数"
    type: number
    sql: ${TABLE}.blocked ;;
  }

  dimension_group: created_at {
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
    sql: ${TABLE}.created_at ;;
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

  dimension: identification_code {
    type: string
    sql: ${TABLE}.identification_code ;;
  }

  dimension: model_number {
    label: "型番"
    type: string
    sql: ${TABLE}.model_number ;;
  }

  dimension: drill_model_number {
    label: "型番"
    drill_fields: [date_date, name, sku_code, m_available, m_blocked, m_received]
    sql: ${TABLE}.model_number ;;
  }


  dimension: month {
    label: "年月"
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: name {
    label: "商品"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: object_code {
    type: string
    sql: ${TABLE}.object_code ;;
  }

  dimension: received {
    label: "入荷待ち数"
    type: number
    sql: ${TABLE}.received ;;
  }

  dimension: sku_code {
    label: "SKUコード"
    type: string
    sql: ${TABLE}.sku_code ;;
  }

  dimension_group: updated_at {
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
    sql: ${TABLE}.updated_at ;;
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
