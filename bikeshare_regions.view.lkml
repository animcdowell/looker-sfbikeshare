view: bikeshare_regions {
  sql_table_name: sf_bikeshare_clone.bikeshare_regions ;;

  dimension: region_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
    primary_key: yes
  }

  measure: region_count {
    type: count
    drill_fields: [region_name]
    label: "Count of regions"
  }
}
