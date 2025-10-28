use context starter2024
include statistics
include math
check:
  [list:1,2,3] is link(1,link(2,link(3,empty)))
end

fun my-len(l):
  cases (List)l:
    |empty => 0
    |link(f,r) => 1 + my-len(r)
  end
where:
  my-len([list:2,7,7,8]) is 4
end



     
fun add(l):
  cases (List)l:
    |empty => ""
    |link(f,r) => f + add(r)
  end
where:
  add([list:"Hello"," ","World"]) is "Hello World"
  add([list:"One","Two","Three"]) is "OneTwoThree"
end

fun round-numbers(l):
  cases(List)l:
    |empty => empty
    |link(f,r) => link(num-round(f),round-numbers(r))
  end
where:
  round-numbers([list:3.8,9.1,7.8]) is [list: 4,9,8]
end