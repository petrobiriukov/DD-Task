connection: "default_bigquery_connection"

datagroup: petro_git_integration_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: petro_git_integration_default_datagroup

