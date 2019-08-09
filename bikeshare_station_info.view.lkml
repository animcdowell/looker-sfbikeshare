view: bikeshare_station_info {
  sql_table_name: sf_bikeshare_clone.bikeshare_station_info ;;

  dimension: capacity {
    type: number
    sql: ${TABLE}.capacity ;;
  }

  dimension: eightd_has_key_dispenser {
    type: yesno
    sql: ${TABLE}.eightd_has_key_dispenser ;;
    hidden:  yes
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
    hidden: yes
  }

  dimension: has_kiosk {
    type: yesno
    sql: ${TABLE}.has_kiosk ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: station_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  dimension: rental_methods {
    type: string
    sql: ${TABLE}.rental_methods ;;
  }

  dimension: rental_url {
    type: string
    sql: ${TABLE}.rental_url ;;
    hidden: yes
  }

  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }

  dimension: station_geom {
    type: string
    sql: ${TABLE}.station_geom ;;
  }

  dimension: station_id {
    type: number
    sql: ${TABLE}.station_id ;;
    primary_key: yes
  }

  measure: station_count {
    type: count
    drill_fields: [station_name, short_name]
    label: "Count of stations"
  }
}
