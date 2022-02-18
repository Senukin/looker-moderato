view: inventory_summaries {

sql_table_name: `cloudfit-saas-prd.moderato.inventory_summaries`
      ;;

    dimension: created_at {
      label: "日付"
      type: string
      sql: ${TABLE}.created_at ;;
    }
}
