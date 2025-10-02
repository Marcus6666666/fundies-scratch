use context starter2024
#1
fun leap_year(year :: Number):
  doc: "this function is to check whether the year is a leap year"
  ask:
    |num-modulo(year,400) == 0 then: true
    |num-modulo(year,100) == 0 then: false
    |num-modulo(year,4) == 0 then: true
    |otherwise:false
  end
where:
  leap_year(2014) is false
  leap_year(4000) is true
end
#2
fun stick(seconds :: Number) -> Number:
  doc:"to return the next second in minutes"
  ask:
    |seconds == 59 then: 0
    |(seconds < 0) or (seconds > 59) then: "invalid number"
    |otherwise:seconds + 1
  end
  #using ask to calsulate the next second under three conditions
where:
  stick(59) is 0
  stick(32) is 33
end
#check function work

#check function work
#3
fun rock-paper-scissors(input1 :: String,input2 :: String) -> String:
  doc: 'defining who wins the gamee by comparing the inputs by two players'
  ask:
    |(input1 == 'rock') and (input2 == 'paper') then: 'player2'
    |(input1 == 'rock') and (input2 == 'scissors') then: 'player 2'
    |(input1 == 'scissors') and (input2 == 'rock') then: 'player2'
    |(input1 == 'scissors') and (input2 == 'paper') then: 'player1'
    |(input1 == 'paper') and (input2 == 'rock') then: 'player1'
    |(input1 == 'paper') and (input2 == 'scissors') then: 'player2'
    |otherwise:'tie'
  end
where:
  rock-paper-scissors('rock','rock') is 'tie'
  rock-paper-scissors('rock','paper') is 'player2'
end
#check randomly by two inputs
#4
planets = table:planet,distance
  #creat the table include datas
  row:'Mercury',0.39
  row:'Venus',0.72
  row:'Earth',1
  row:'Mars',1.52
  row:'Jupter',5.2
  row:'Saturn',9.54
  row:'Uranus',19.2
  row:'Neptune',30.02
end
planets.row-n(3)
#check the values in row 3
      