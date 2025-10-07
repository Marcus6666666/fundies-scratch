use context dcic2024
include csv
include data-source
flights = load-table:
  rownames,
  dep_time,
  sched_dep,
  sched_delay,
  arr_time,
  sched_arr,
  arr_delay,
  carrier,
  flight,
  tailnum,
  origin,
  dest,
  air_time,
  distance,
  hour,
  minute,
  time_hour
  source: csv-table-file("flights.csv", default-options)
  sanitize rownames using num-sanitizer
  sanitize distance using num-sanitizer
  sanitize air_time using num-sanitizer
  sanitize sched_delay using num-sanitizer
  sanitize sched_dep using num-sanitizer
    #sanitizing all the columns to number
end

#importing the flights table from file
fun is_long_flight(number :: Row) -> Boolean:
  doc: "check is the flight a long flight with distance over 1500"
  number["distance"] >= 1500
end
is_long_flight(flights.row-n(36))
#fun check

filter-with(flights,lam(i): i["distance"] >= 1500 end)
#is_long_flight, showing all the flights distance larger than 1500

order-by(flights,"air_time",false)
#using order-by function and false to make the order of air_time decreasing from largest
flights.row-n(166)["carrier"]
flights.row-n(166)["origin"]
flights.row-n(166)["dest"]
#extract column saperately

fun is_delayed_departure(r :: Row) -> Boolean:
  doc:"check whether the flightt delay over 30 minutes"
  r["sched_delay"] >= 30
end
#r-1 to access the correct flight with same number?
is_delayed_departure(flights.row-n(778))
#fun check
fun is_morning_sched_dep(r :: Row) -> Boolean:
  doc:"is the flight depart before noon"
  r["sched_dep"] < 1200
end
is_morning_sched_dep(flights.row-n(778))
#fun test
filter-with(flights,lam(r :: Row):r["sched_delay"] >= 30 end)
#using lam with filter with to filt

flights_before_noon = filter-with(flights,lam(r): r["sched_dep"] < 1200 end)
#create a new table to filter based on subset

filter-with(flights_before_noon, lam(r): r["distance"] > 500 end)
#using lam to shorten code

order-by(flights,"sched_delay",false)
#false means decreasing with largest delay time

flights.row-n(647)["flight"]
flights.row-n(647)["origin"]
flights.row-n(647)["sched_delay"]
#648-1 since number count from 0



transform-column(flights,"sched_delay",lam(r :: Number): if r < 0: 0 else: r end end)