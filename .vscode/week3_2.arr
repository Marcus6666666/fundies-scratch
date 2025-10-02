use context starter2024
fun choose-hat(temp-in-C :: Number) -> String:
  doc: 'determined appropriate head gear'

  
  if temp-in-C > 27:
    'sun hat'
  else if
    temp-in-C < 10:
    'winter hat'
    else:
    'The weather is good'
  end
    + ' and glasses'
end


    
choose-hat(8)

fun choose-hat-or-visor(temp-in-C,has-visor) -> String:
  doc: 'determined appropriate head gear'

  
  if has-visor and (temp-in-C > 30):
    'sun hat and glasses'
    else:
    'The weather is good'
  end
end
  
choose-hat-or-visor(32, false)

