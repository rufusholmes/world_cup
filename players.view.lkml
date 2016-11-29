view: players {
  sql_table_name: public.players ;;

  dimension: id {
    primary_key: yes
    type: number
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

  dimension: club {
    type: string
    sql: ${TABLE}.club ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: height_cm {
    type: number
    sql: ${TABLE}.height_cm ;;
  }

  dimension: international_goals {
    type: number
    sql: ${TABLE}.international_goals ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: plays_in_home_country {
    type: yesno
    sql: ${TABLE}.plays_in_home_country ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  measure: average_height {
    type: average
    sql: ${height_cm} ;;
    value_format: "#"
  }
}
