use context dcic2024


include csv
include data-source

color = "yellow"
workouts = table: date, activity, duration
  row:"2025-04-15","Running",40
  row:"2025-06-15","Swimming",65
end
workouts.row-n(0)["duration"]

recipes = load-table:
  title :: String,
  servings :: Number,
  prep-time :: Number
  source: csv-table-url("https://raw.githubusercontent.com/NU-London/LCSCI4207-datasets/refs/heads/main/recipes.csv", default-options)
end