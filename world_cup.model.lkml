connection: "fifa"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: players {}

explore: projects {}

explore: wc_2014_players {
  join: players {
    type: left_outer
    sql_on: ${players.name} = ${wc_2014_players.name} ;;
    relationship: many_to_many
    }

  join: projects {
    type: left_outer
    sql_on: ${projects.country} = ${wc_2014_players.team} ;;
    relationship: many_to_many
  }
}
