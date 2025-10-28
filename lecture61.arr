use context starter2024
data phone: mobile(brand,model,color,storage)
end

phone-1 = mobile('Apple','17pro','orange',256)

phone-1.storage

fun cost(p :: phone) -> Number:
  base-price = 1000
  add-price = 10
  base-price + (add-price * p.storage)
where:
  cost(phone-1) is 3560
end

fun compute-price-condition(p :: phone) -> Number:
  base-price = if p.model == "14pro":
    666
  else if p.model == "17pro":
    777
  else if p.model == "13pro":
    888
  end
  
  storage-cost = if p.storage == 128:
    1000
  else if p.storage == 256:
    2500
  end
  storage-cost + base-price
where:
  compute-price-condition(phone-1) is 3277
end
    
data Priority:
  | low
  | medium
  | high
end
task-1 = low
task-2 = medium
task-3 = high

check:
  is-Priority(task-1) is true
  is-medium(task-2) is true
  is-high(task-2) is false
end

data Task:
  |task(description :: String, priority :: Priority)
  |note(description :: String)
end
task-4 = task("Play football",low)
task-5 = task("watch a movie",low)
note-1 = note("123")

fun describe(t :: Task) -> String:
  doc:"describe the task"
  cases(Task)t:
    |task(d,p) => "Task:" + d
    |note(n) => n
  end
end
describe(task-4)

fun new-describe(t :: Task) -> String:
  cases(Task)t:
    |task(d,p) => 
      pr = cases(Priority)p:
        |low => "low priority"
        |medium => "Medium priority"
        |high => "high priority"
          