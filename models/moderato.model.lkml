connection: "bigquery-cloudfit-saas-prd"

include: "/views/*.view"

explore: order_items {
  label: "注文商品"
}

explore: inventory_summaries {
  label: "在庫"
}
