view: distribution_centers {
  sql_table_name: PUBLIC.DISTRIBUTION_CENTERS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
# Adding long & latitude as location TYPE


  dimension: store_location {
    type: location
    sql_latitude: ${TABLE}."LATITUDE" ;;
    sql_longitude: ${TABLE}."LONGITUDE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, products.count]
  }
}
