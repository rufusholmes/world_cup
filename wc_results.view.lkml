view: wc_results {
  sql_table_name: public.wc_results ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: score_a {
    type: number
    sql: ${TABLE}.scoreA ;;
  }

  dimension: score_b {
    type: number
    sql: ${TABLE}.scoreB ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: team_a {
    type: string
    sql: ${TABLE}.teamA ;;
  }

  dimension: team_b {
    type: string
    sql: ${TABLE}.teamB ;;
  }

  dimension: winner {
    type: string
    sql: ${TABLE}.winner ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
