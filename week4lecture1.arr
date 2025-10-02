use context dcic2024
include csv
orders = table: time, amount
  row: "08:00", 10.50
  row: "09:30", 5.75
  row: "10:15", 8.00
  row: "11:00", 3.95
  row: "14:00", 4.95
  row: "16:45", 7.95
end

fun is-high-value(o :: Row) -> Boolean:
  o["amount"] >= 8.0
where:
  is-high-value(orders.row-n(2)) is true
end

is-high-value(orders.row-n(4))


new-high-order = filter-with(orders,lam(o): o["amount"] >= 8.0 end)

new-high-order


new-high-order

is-morning = filter-with(orders,lam(m): m["time"] <= "12:00" end)
is-morning

#order-by(orders,lam(t): orders.time end,decreasing)
photos = load-table:
  Location,
  Subject,
  Date
  source: csv-table-url("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/support/7-photos.csv",default-options)
end

location-counts = count(photos,"Location")
location-counts
