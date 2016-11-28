view: projects {
  sql_table_name: public.projects ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: approval {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.approval_date ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  dimension: contractor1 {
    type: string
    sql: ${TABLE}.contractor1 ;;
  }

  dimension: contractor10 {
    type: string
    sql: ${TABLE}.contractor10 ;;
  }

  dimension: contractor10_amount {
    type: string
    sql: ${TABLE}.contractor10_amount ;;
  }

  dimension: contractor11 {
    type: string
    sql: ${TABLE}.contractor11 ;;
  }

  dimension: contractor11_amount {
    type: string
    sql: ${TABLE}.contractor11_amount ;;
  }

  dimension: contractor12 {
    type: string
    sql: ${TABLE}.contractor12 ;;
  }

  dimension: contractor12_amount {
    type: string
    sql: ${TABLE}.contractor12_amount ;;
  }

  dimension: contractor13 {
    type: string
    sql: ${TABLE}.contractor13 ;;
  }

  dimension: contractor13_amount {
    type: string
    sql: ${TABLE}.contractor13_amount ;;
  }

  dimension: contractor14 {
    type: string
    sql: ${TABLE}.contractor14 ;;
  }

  dimension: contractor14_amount {
    type: string
    sql: ${TABLE}.contractor14_amount ;;
  }

  dimension: contractor15 {
    type: string
    sql: ${TABLE}.contractor15 ;;
  }

  dimension: contractor15_amount {
    type: string
    sql: ${TABLE}.contractor15_amount ;;
  }

  dimension: contractor16 {
    type: string
    sql: ${TABLE}.contractor16 ;;
  }

  dimension: contractor16_amount {
    type: string
    sql: ${TABLE}.contractor16_amount ;;
  }

  dimension: contractor17 {
    type: string
    sql: ${TABLE}.contractor17 ;;
  }

  dimension: contractor17_amount {
    type: string
    sql: ${TABLE}.contractor17_amount ;;
  }

  dimension: contractor18 {
    type: string
    sql: ${TABLE}.contractor18 ;;
  }

  dimension: contractor18_amount {
    type: string
    sql: ${TABLE}.contractor18_amount ;;
  }

  dimension: contractor19 {
    type: string
    sql: ${TABLE}.contractor19 ;;
  }

  dimension: contractor19_amount {
    type: string
    sql: ${TABLE}.contractor19_amount ;;
  }

  dimension: contractor1_amount {
    type: string
    sql: ${TABLE}.contractor1_amount ;;
  }

  dimension: contractor2 {
    type: string
    sql: ${TABLE}.contractor2 ;;
  }

  dimension: contractor20 {
    type: string
    sql: ${TABLE}.contractor20 ;;
  }

  dimension: contractor20_amount {
    type: string
    sql: ${TABLE}.contractor20_amount ;;
  }

  dimension: contractor21 {
    type: string
    sql: ${TABLE}.contractor21 ;;
  }

  dimension: contractor21_amount {
    type: string
    sql: ${TABLE}.contractor21_amount ;;
  }

  dimension: contractor22 {
    type: string
    sql: ${TABLE}.contractor22 ;;
  }

  dimension: contractor22_amount {
    type: string
    sql: ${TABLE}.contractor22_amount ;;
  }

  dimension: contractor23 {
    type: string
    sql: ${TABLE}.contractor23 ;;
  }

  dimension: contractor23_amount {
    type: string
    sql: ${TABLE}.contractor23_amount ;;
  }

  dimension: contractor24 {
    type: string
    sql: ${TABLE}.contractor24 ;;
  }

  dimension: contractor24_amount {
    type: string
    sql: ${TABLE}.contractor24_amount ;;
  }

  dimension: contractor25 {
    type: string
    sql: ${TABLE}.contractor25 ;;
  }

  dimension: contractor25_amount {
    type: string
    sql: ${TABLE}.contractor25_amount ;;
  }

  dimension: contractor26 {
    type: string
    sql: ${TABLE}.contractor26 ;;
  }

  dimension: contractor26_amount {
    type: string
    sql: ${TABLE}.contractor26_amount ;;
  }

  dimension: contractor2_amount {
    type: string
    sql: ${TABLE}.contractor2_amount ;;
  }

  dimension: contractor3 {
    type: string
    sql: ${TABLE}.contractor3 ;;
  }

  dimension: contractor3_amount {
    type: string
    sql: ${TABLE}.contractor3_amount ;;
  }

  dimension: contractor4 {
    type: string
    sql: ${TABLE}.contractor4 ;;
  }

  dimension: contractor4_amount {
    type: string
    sql: ${TABLE}.contractor4_amount ;;
  }

  dimension: contractor5 {
    type: string
    sql: ${TABLE}.contractor5 ;;
  }

  dimension: contractor5_amount {
    type: string
    sql: ${TABLE}.contractor5_amount ;;
  }

  dimension: contractor6 {
    type: string
    sql: ${TABLE}.contractor6 ;;
  }

  dimension: contractor6_amount {
    type: string
    sql: ${TABLE}.contractor6_amount ;;
  }

  dimension: contractor7 {
    type: string
    sql: ${TABLE}.contractor7 ;;
  }

  dimension: contractor7_amount {
    type: string
    sql: ${TABLE}.contractor7_amount ;;
  }

  dimension: contractor8 {
    type: string
    sql: ${TABLE}.contractor8 ;;
  }

  dimension: contractor8_amount {
    type: string
    sql: ${TABLE}.contractor8_amount ;;
  }

  dimension: contractor9 {
    type: string
    sql: ${TABLE}.contractor9 ;;
  }

  dimension: contractor9_amount {
    type: string
    sql: ${TABLE}.contractor9_amount ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fap_contribution {
    type: number
    sql: ${TABLE}.fap_contribution ;;
  }

  dimension: goal {
    type: string
    sql: ${TABLE}.goal ;;
  }

  dimension: goal_contribution {
    type: number
    sql: ${TABLE}.goal_contribution ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: ma_contribution {
    type: number
    sql: ${TABLE}.ma_contribution ;;
  }

  dimension: objectives {
    type: string
    sql: ${TABLE}.objectives ;;
  }

  dimension: other_contribution {
    type: number
    sql: ${TABLE}.other_contribution ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_budget {
    type: number
    sql: ${TABLE}.total_budget ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
