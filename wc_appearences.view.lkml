view: wc_appearences {

  derived_table: {
    sql:
      SELECT
        teama AS team,
        COUNT(*) AS appearences
      FROM
        wc_results
      GROUP BY teama
      UNION ALL
      SELECT
        teamb,
        COUNT(*)
      FROM
        wc_results
      GROUP BY teamb ;;
  }

  dimension: id {
    sql: CONCAT(${team},${appearences}) ;;
    primary_key: yes
  }

  dimension: team {
    sql: ${TABLE}.team ;;
  }

  dimension: appearences {
    sql: ${TABLE}.appearences ;;
  }

  measure: total_appearences {
    type: sum
    sql: ${appearences} ;;
  }

}
