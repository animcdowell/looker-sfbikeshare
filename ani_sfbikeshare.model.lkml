connection: "ani-bq-public-data"

# include all the views
include: "*.view"

datagroup: ani_sfbikeshare_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ani_sfbikeshare_default_datagroup

# explore: bikeshare_regions {}

# explore: bikeshare_station_info {}

# explore: bikeshare_station_status {}

explore: sf_bikeshare {
  label: "SF Bikeshare Wooo!"
  view_name: bikeshare_station_info

  join: bikeshare_station_status {
    relationship: one_to_one
    sql_on: ${bikeshare_station_info.station_id} = ${bikeshare_station_status.station_id} ;;
    type: left_outer
  }

  join: bikeshare_regions {
    relationship: many_to_one
    sql_on: ${bikeshare_station_info.region_id} = ${bikeshare_regions.region_id} ;;
    type: left_outer
  }

#   join: bikeshare_trips_start {
#     from: bikeshare_trips
#     relationship: one_to_many
#     sql_on: ${bikeshare_station_info.station_id} = ${bikeshare_trips_start.start_station_id} ;;
#     type: left_outer
#   }
#
#   join: bikeshare_trips_end {
#     from: bikeshare_trips
#     relationship: one_to_many
#     sql_on: ${bikeshare_station_info.station_id} = ${bikeshare_trips_end.start_station_id} ;;
#     type: left_outer
#   }

  join: bikeshare_trips {
    relationship: one_to_many
    sql_on: ${bikeshare_station_info.station_id} = ${bikeshare_trips.start_station_id} and ${bikeshare_station_info.station_id} = ${bikeshare_trips.end_station_id} ;;
    type: full_outer
  }

}
