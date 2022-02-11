view: order_items {
  sql_table_name: `cloudfit-saas-prd.moderato.order_items`
    ;;

  dimension: customer_id {
    label: "顧客ID"
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: email {
    label: "メールアドレス"
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: item_title {
    label: "商品名"
    type: string
    sql: ${TABLE}.item_title ;;
  }

  dimension: order_id {
    label: "注文ID"
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_line_id {
    label: "注文明細ID"
    type: number
    sql: ${TABLE}.order_line_id ;;
  }

  dimension: order_number {
    label: "注文番号"
    type: number
    sql: ${TABLE}.order_number ;;
  }

  dimension_group: ordered {
    label: "注文日時"
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
    sql: ${TABLE}.ordered_at ;;
  }

  dimension: price {
    label: "価格(税抜)"
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_with_tax {
    label: "価格(税込)"
    type: number
    sql: ${TABLE}.price_with_tax ;;
  }

  dimension: product_id {
    label: "商品ID"
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    label: "数量"
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: refund_id {
    hidden: yes
    type: number
    sql: ${TABLE}.refund_id ;;
  }

  dimension_group: refunded {
    label: "返金日時"
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
    sql: ${TABLE}.refunded_at ;;
  }

  dimension: refunded_price_with_tax {
    label: "返金額(税込)"
    type: number
    sql: ${TABLE}.refunded_price_with_tax ;;
  }

  dimension: refunded_quantity {
    label: "返品数量"
    type: number
    sql: ${TABLE}.refunded_quantity ;;
  }

  dimension_group: fulfilled {
    label: "配送日時"
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
    sql: ${TABLE}.fulfilled_at ;;
  }

  dimension: fulfilled_status {
    label: "配送ステータス"
    type: string
    sql: ${TABLE}.fulfilled_status ;;
  }

  dimension: sku {
    label: "SKU"
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tags {
    label: "注文タグ"
    type: string
    sql: ARRAY_TO_STRING(${TABLE}.tags) ;;
  }

  dimension: tax {
    label: "消費税"
    type: number
    sql: ${TABLE}.tax ;;
  }

  dimension: variant_id {
    label: "バリエーションID"
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: vendor {
    label: "販売者"
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: customer_orders_count {
    label: "累積注文回数"
    type: number
    sql: ${TABLE}.customer_orders_count ;;
  }

  dimension: customer_orders_count_range {
    label: "累積注文回数グループ"
    type: tier
    tiers: [0,1,2,3,4,5]
    style: integer
    sql: ${TABLE}.customer_orders_count ;;
  }

  measure: count {
    label: "行数"
    type: count
    drill_fields: []
  }

  measure: order_count {
    label: "注文件数"
    type: count_distinct
    sql: ${order_id} ;;
  }

  measure: customer_count {
    label: "顧客数"
    type: count_distinct
    sql: ${customer_id};;
  }

  measure: revenue {
    label: "販売金額(税抜)"
    type: sum
    sql: ${price} * ${quantity} ;;
  }

  measure: revenue_with_tax {
    label: "販売金額(税込)"
    type: sum
    sql: ${price_with_tax} * ${quantity} ;;
  }

  measure: sum_tax {
    label: "消費税"
    type: sum
    sql: ${tax} * ${quantity} ;;
  }

  measure: sum_refund_amount {
    label: "返金額(税抜)"
    type: sum
    sql: ${TABLE}.refunded_price ;;
  }

  measure: sum_refund_amount_with_tax {
    label: "返金額(税込)"
    type: sum
    sql: ${TABLE}.refund_amount_with_tax ;;
  }

  measure: sum_quantity {
    label: "販売数量"
    type: sum
    sql: ${quantity} ;;
  }

  measure: avg_order_revenue {
    label: "注文単価"
    type: number
    sql: ${revenue} / ${order_count} ;;
    value_format: "#,##0"
  }

  measure: avg_order_quantity {
    label: "平均購入点数"
    type: average
    sql: ${TABLE}.quantity ;;
    value_format: "#,##0.00"
  }

  dimension: product_type {
    label: "商品カテゴリ"
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: customer_category {
    label: "顧客カテゴリ"
    type: string
    sql: ${TABLE}.customer_category ;;
  }
}
