use context dcic2024
include csv
#replace all the missing data with word missing 
#make all letters with standard format
flight_53 = load-table:
  rownames,
  dep_time,
  sched_dep_time,
  dep_delay,
  arr_time,
  sched_arr_time,
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
  source: csv-table-file("flights_sample53.csv",default-options)
end

flight_53

flight_new = transform-column("tailnum",lam(r): if r["tailnum"] == "": "UNKNOWN" 
  else: r["tailnum"] end end)

flight_new1 = transform-column("dep_delay",lam(r): if r["dep_delay"] < 0: 
    0
    else:
      r["dep_delay"]
      end
  end)
      