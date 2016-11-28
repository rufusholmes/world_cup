view: wc_2014_players {
  sql_table_name: public.wc_2014_players ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: caps {
    type: number
    sql: ${TABLE}.caps ;;
  }

  dimension: captain {
    type: yesno
    sql: ${TABLE}.captain ;;
  }

  dimension: club {
    type: string
    sql: ${TABLE}.club ;;
  }

  dimension_group: dob {
    type: time
    timeframes: [date, year, month, day_of_month,day_of_week]
    convert_tz: no
    sql: ${TABLE}.dob ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: league {
    type: string
    sql: ${TABLE}.league ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  measure: count {
    type: count
    drill_fields: [name,team,caps,club]
  }

  measure: average_age {
    type:  average
    sql: ${age} ;;
    value_format: "#"
  }


}
