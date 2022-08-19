view: daily_inventory_summaries_all {
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
      FROM ${daily_inventory_summaries_temp.SQL_TABLE_NAME}
      UNION ALL
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
      FROM ${daily_inventory_summary_old_temp.SQL_TABLE_NAME}
    ;;
    }

  dimension: id {
    label: "ID"
    type: string
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
  }


  dimension: model_number {
    label: "型番"
    type: string
  }

  dimension: month {
    label: "年月"
    type: string
  }

  dimension: name {
    label: "商品"
    type: string
  }

  dimension: object_code {
    type: string
  }

  dimension: sku_code {
    label: "SKUコード"
    type: string
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
  }

  measure: available {
    label: "在庫数"
    type: sum
  }

  measure: blocked {
    label: "保留数"
    type: sum
  }

  measure: received {
    label: "入庫待ち数"
    type: sum
  }

  }
