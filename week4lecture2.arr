use context dcic2024
items = table: item :: String, x-coordinate :: Number, y-coordinate :: Number
  row: "Sword of Dawn",           23,  -87
  row: "Healing Potion",         -45,   12
  row: "Dragon Shield",           78,  -56
  row: "Magic Staff",             -9,   64
  row: "Elixir of Strength",      51,  -33
  row: "Cloak of Invisibility",  -66,    5
  row: "Ring of Fire",            38,  -92
  row: "Boots of Swiftness",     -17,   49
  row: "Amulet of Protection",    82,  -74
  row: "Orb of Wisdom",          -29,  -21
end
fun add_1(n):
  doc: 'add 1 on column'
  n + 1
where:
  add_1(2.9) is 3.9
end
new_items = transform-column(items,"x-coordinate",add_1)
new_items
item-with-list = build-column(items,"distance",lam(r): num-sqrt(num-sqr(r["x-coordinate"] + num-sqr(r["y-coordinate"])))end)
item-with-list

closer_items = transform-column(items,"x-coordinate",lam(x): x * 0.9 end)
closer_items-new = transform-column(items,"y-coordinate",lam(y): y * 0.9 end)
closer_items-new
item-with-list-new = build-column(closer_items-new,"distance",lam(r): num-sqr(r["x-coordinate"] + num-sqr(r["y-coordinate"]))end)
#calculate the square distance since they all larger than 0
item-with-list-new
#min-distance = min(item-with-list-new.column("distance"))
items-sorted = order-by(item-with-list-new,"distance",true)
closest = items-sorted.row-n(0)["item"]
closest
sell = table:goods,price
  row:"one",25
  row:"two",30
end
new_sell = build-column(sell,"finalprice",lam(p): p["price"] * 1.2 end)
new_sell