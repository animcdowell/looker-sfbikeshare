view: bikeshare_trips {
  sql_table_name: sf_bikeshare_clone.bikeshare_trips ;;

  dimension: bike_number {
    type: number
    sql: ${TABLE}.bike_number ;;
  }

  dimension: bike_share_for_all_trip {
    type: string
    sql: ${TABLE}.bike_share_for_all_trip ;;
  }

  dimension: c_subscription_type {
    type: string
    sql: ${TABLE}.c_subscription_type ;;
    hidden: yes
  }

  dimension: duration_sec {
    type: number
    sql: ${TABLE}.duration_sec ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: end_station_geom {
    type: string
    sql: ${TABLE}.end_station_geom ;;
    hidden: yes
  }

  dimension: end_station_id {
    type: number
    sql: ${TABLE}.end_station_id ;;
  }

  dimension: end_station_latitude {
    type: number
    sql: ${TABLE}.end_station_latitude ;;
    hidden: yes
  }

  dimension: end_station_longitude {
    type: number
    sql: ${TABLE}.end_station_longitude ;;
    hidden: yes
  }

  dimension: end_station_location {
    type: string
    sql: CONCAT(CAST(${end_station_latitude} as STRING),",",CAST(${end_station_longitude} as STRING)) ;;
    hidden: yes
  }

  dimension: end_station_name {
    type: string
    sql: ${TABLE}.end_station_name ;;
  }

  dimension: member_birth_year {
    type: number
    sql: ${TABLE}.member_birth_year ;;
  }

  dimension: member_gender {
    type: string
    sql: ${TABLE}.member_gender ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: start_station_geom {
    type: string
    sql: ${TABLE}.start_station_geom ;;
    hidden: yes
  }

  dimension: start_station_id {
    type: number
    sql: ${TABLE}.start_station_id ;;
  }

  dimension: start_station_latitude {
    type: number
    sql: ${TABLE}.start_station_latitude ;;
    hidden: yes
  }

  dimension: start_station_longitude {
    type: number
    sql: ${TABLE}.start_station_longitude ;;
    hidden: yes
  }

  dimension: start_station_location {
    type: string
    sql: CONCAT(CAST(${start_station_latitude} as STRING),",",CAST(${start_station_longitude} as STRING)) ;;
    hidden: yes
  }

  dimension: start_station_name {
    type: string
    sql: ${TABLE}.start_station_name ;;
  }

  dimension: subscriber_type {
    type: string
    sql: ${TABLE}.subscriber_type ;;
  }

  dimension: trip_id {
    type: number
    sql: ${TABLE}.trip_id ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: [start_station_name, end_station_name]
    label: "Count of trips"
  }
}
