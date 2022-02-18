view: inventory_summaries {

sql_table_name: `cloudfit-saas-prd.moderato.inventory_summaries`
      ;;

  dimension_group: created_at {
    label: "日付"
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

  dimension: sku {
    label: "SKU"
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: available {
    label: "在庫数"
    type: sum
    sql: ${TABLE}.available ;;
  }

  dimension: layer {
    type: string
    sql: ${TABLE}.layer ;;
  }

  measure: received {
    label: "入庫待ち"
    type: sum
    sql: ${TABLE}.received ;;
  }

  dimension: title {
    label: "商品名"
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: product_type {
    label: "商品カテゴリ"
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: color {
    label: "色"
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: size {
    label: "サイズ"
    type: string
    sql: ${TABLE}.size ;;
  }

  dimension: image_id {
    type: string
    sql: ${TABLE}.image_id ;;
  }

}
