connection: "fifa"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: players {}

explore: wc_2014_players {
  join: players {
    sql_on: lower(${players.name}) = lower(${wc_2014_players.name}) ;;
    relationship: many_to_many
    }

  join: projects {
    type: left_outer
    sql_on: ${projects.country} = ${wc_2014_players.team} ;;
    relationship: many_to_many
  }
}

explore: wc_results {
  join: wc_2014_players {
    type: full_outer
    sql_on: ${wc_2014_players.team} = ${wc_results.team_a} ;;
    relationship: many_to_many
  }

  join: wc_appearences {
    sql_on: ${wc_appearences.team} = ${wc_results.team_a} ;;
    type: full_outer
    relationship: many_to_many
  }

}
