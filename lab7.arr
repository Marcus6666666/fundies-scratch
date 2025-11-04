use context starter2024
data SensorNet:
  | hub(bandwidth :: Number, left :: SensorNet, right :: SensorNet)
  | sensor(rate :: Number)
end
sA = sensor(60)
sB = sensor(120)
sC = sensor(45)
hub1 = hub(150, sA, sB)
core = hub(200, hub1, sC)
hub2 = hub(400,sB,sA)

fun total-load(n :: SensorNet) -> Number:
  doc:"adding all the rate together"
  cases(SensorNet)n:
    |hub(b,l,r) => total-load(l) + total-load(r)
    |sensor(r) => r
  end
end
total-load(core)

fun fits-capacities(n :: SensorNet) -> Boolean:
  cases(SensorNet)n:
    |hub(b,l,r) => if (b >= (total-load(l) + total-load(r))):
        true
      else:
        false
      end
    |sensor(r) => empty
  end
end
fits-capacities(hub2)

fun deepest-depth(n :: SensorNet) -> Number:
  doc:"returning the deepest depth"
  cases(SensorNet)n:
    |hub(b,l,r) => 1 + deepest-depth(l) + deepest-depth(r)
    |sensor(r) => 0
  end
end
deepest-depth(core)

fun apply-scale(n :: SensorNet, s :: Number) -> SensorNet:
  cases(SensorNet)n:
    |hub(b,l,r) => apply-scale(l,s) + apply-scale(r,s)
    |sensor(rate) => sensor(rate / s) 
  end
end
apply-scale(core,2)
