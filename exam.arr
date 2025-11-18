use context starter2024
include math
fun aqi-check(aqi :: Number) -> String:
  doc:"checking the exact air quality"
  ask:
    |(aqi >= 0) and (aqi < 50) then: "Good"
    |(aqi >= 50) and (aqi < 100) then: "Moderate"
    |(aqi >= 100) and (aqi < 50) then: "Unhealthy"
    |(aqi >= 150) then: "Hazardous"
  end
end

aqi-check(34)
aqi-check(184)

basket = table: item :: String, price :: Number, quantity :: Number
  row: "apple", 0.50, 10
  row: "orange", 0.75, 5
  row: "watermelon", 2.99, 2
end
new-bascket = basket.build-column("total",lam(r): r["price"] * r["quantity"] end)
new-bascket
max1 = max(new-bascket.column("total"))
print(max1)

fun convert(len :: Number) -> Number:
  doc:"converting Kilometers to Miles"
  new-length = len / 1.6
  print(new-length)
end

convert(2778)