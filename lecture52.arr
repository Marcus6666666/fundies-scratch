use context dcic2024
import math as m
import statistics as s
cafe-data =
  table: day, drinks-sold
    row: "Mon", 45
    row: "Tue", 30
    row: "Wed", 55
    row: "Thu", 40
    row: "Fri", 60
  end

cafe-data.get-column("drinks-sold")

sample-list = [list:4,6,3,6,3,5]
sample-list
empty-list = [list: ]
empty-list
m.sum(sample-list)
s.mean(sample-list)
m.min(sample-list)
m.max(sample-list)
fun produc(num-list :: List<Number>) -> Number block:
  doc:"to multiple all the number together"
  var result = 1
  for each(n from num-list):
    result := result * n
  end 
  result
end

discount-codes = [list: "NEWYEAR", "student", "NONE", "student", "VIP", "none"]
unique-code = distinct(discount-codes)
unique-code



map(string-to-upper,unique-code)

survey = [list: "yes","NO","maybe","Yes","no","Maybe"]
update = distinct(survey)
map(string-to-lower,update)
filter-with(lam(n): not(n == "maybe") end,update) 

fun product(n :: List<Number>) -> Number block:
  doc:"computing product"
  var a = 1
  for each(number from n):
    a := number * a
  end
  a
end
product(sample-list)

fun sum-even-number(a :: List<Number>) -> Number block:
  var result = 1
  for each(n from a)：
    if num-modulo(get(n，2) == 0:
      result := result * n
    end
  end
  result
end