connection: "bigquery-cloudfit-saas-prd"

include: "/views/*.view"

explore: order_items {
  label: "注文商品"
}

explore: inventory_summaries {
  label: "在庫"
}


explore: report_summary
{
  label: "在庫サマリー"
}

explore: report_summary_group_by_categories
{
  label: "カテゴリごとに集計した在庫サマリー"
}


explore: order_items_summary_in_specific_duration_with_availables
{
  label: "order_items_summary_in_specific_duration_with_availables"
}

explore: daily_inventory_summaries {
  label: "日次在庫"
}
