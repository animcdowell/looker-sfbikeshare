view: bikeshare_station_status {
  sql_table_name: sf_bikeshare_clone.bikeshare_station_status ;;

  dimension: eightd_has_available_keys {
    type: yesno
    sql: ${TABLE}.eightd_has_available_keys ;;
    hidden: yes
  }

  dimension: is_installed {
    type: yesno
    sql: ${TABLE}.is_installed ;;
  }

  dimension: is_renting {
    type: yesno
    sql: ${TABLE}.is_renting ;;
  }

  dimension: is_returning {
    type: yesno
    sql: ${TABLE}.is_returning ;;
  }

  dimension: last_reported {
    type: number
    sql: ${TABLE}.last_reported ;;
  }

  dimension: num_bikes_available {
    type: number
    sql: ${TABLE}.num_bikes_available ;;
  }

  dimension: num_bikes_disabled {
    type: number
    sql: ${TABLE}.num_bikes_disabled ;;
  }

  dimension: num_docks_available {
    type: number
    sql: ${TABLE}.num_docks_available ;;
  }

  dimension: num_docks_disabled {
    type: number
    sql: ${TABLE}.num_docks_disabled ;;
  }

  dimension: num_ebikes_available {
    type: number
    sql: ${TABLE}.num_ebikes_available ;;
  }

  dimension: station_id {
    type: number
    sql: ${TABLE}.station_id ;;
    primary_key: yes
  }

  measure: station_count {
    type: count
    drill_fields: []
    label: "Count of stations"
  }
}
