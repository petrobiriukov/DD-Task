
view: sql_runner_query {
  derived_table: {
    sql: SELECT * FROM `wix-site-content-analysis.looker_poc_2025.ecom__sites_report_enrichments_dim` LIMIT 10 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: msid {
    type: string
    sql: ${TABLE}.msid ;;
  }

  dimension: premium_product_name {
    type: string
    sql: ${TABLE}.premium_product_name ;;
  }

  dimension: merchant_business_country_group {
    type: string
    sql: ${TABLE}.merchant_business_country_group ;;
  }

  dimension: lng {
    type: string
    sql: ${TABLE}.lng ;;
  }

  dimension: account_manager {
    type: string
    sql: ${TABLE}.account_manager ;;
  }

  set: detail {
    fields: [
        msid,
	premium_product_name,
	merchant_business_country_group,
	lng,
	account_manager
    ]
  }
}
