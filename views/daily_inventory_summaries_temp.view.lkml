view: daily_inventory_summaries_temp {

derived_table: {
 sql:
 SELECT
  date,
  month,
　id,
  sku_code,
  model_number,
  name,
  article_type,
  price,
  supplier_id,
  updated_at,
  created_at,
  available,
  blocked,
  received
 FROM
  `cloudfit-saas-prd.moderato.daily_inventory_summaries`
    ;;
    }
}
