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

explore: report_sku_week
{
  label: "MDレポート(SKU,週別)"
}

explore: report_model_number_week
{
  label: "MDレポート(型番,週別)"
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

explore: daily_inventory_summaries_metrics {
  label: "日次在庫指標"
}

explore: daily_inventory_summary_old {
  label: "日次在庫_old"
}

explore: daily_inventory_summaries_all {
  label: "日次在庫_all"
}

explore: test_sheet {
  label: "test_sheet"
}

explore: test_sheet_table {
  label: "test_sheet_table"
}
