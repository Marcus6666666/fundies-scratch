use context starter2024
data river:
  |merge(width :: Number, left :: river, right :: river)
  |stream(flow-rate :: Number)
end

stream-a = stream(5)
stream-b = stream(3)
stream-c = stream(8)

merge-1 = merge(12,stream-a,stream-b)
main-river = merge(15,merge-1,stream-c)

fun total-flow(r :: river) -> Number:
  cases(river)r:
    |merge(width,left, right) => total-flow(left) + total-flow(right)
    |stream(flow) => flow
  end
where:
  total-flow(stream-a) is 5
  total-flow(main-river) is 16
end

fun count-merges(r :: river) -> Number:
  cases(river)r:
    |merge(width,left,right) => 1 + count-merges(left) + count-merges(right)
    |stream(flow) => 0
  end
where:
  count-merges(stream-a) is 0
  count-merges(main-river) is 2
end

fun count-streams(r :: river) -> Number:
  cases(river)r:
    |merge(width,left,right) => count-streams(left) + count-streams(right)
    |stream(flow) => 1
  end
where:
  count-streams(main-river) is 3
end

fun max-width(r :: river) -> Number:
  max = 0
  cases(river)r:
    |merge(width,left,right) => num-max(width,num-max(max-width(left),max-width(right)))
    |stream(flow) => 0
  end
where:max-width(main-river) is 15
end


fun widen-river(r,wider):
  cases(river)r:
    |merge(w,left,right) => merge(w + wider, widen-river(left,wider),widen-river(right,wider))
    |stream(f) => stream(f)
  end
where:
  widen-river(main-river,10).width is 25
end