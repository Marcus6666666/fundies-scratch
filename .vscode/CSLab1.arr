use context starter2024
5 * (12 + 3)
#calculating total cost for 5 Tshirts#
7 * (12 + 3)
#calculating total cosr for 7 Tshirts#
((420 + 594) * 2) * 0.1
#The cost of poster#
"Designs for everyone!"
"Yellow" + "red"
black = rectangle(50,150,"solid","black")
red_light = circle(20,"solid","red")
yellow_light = circle(20,"solid","yellow")
green_light = circle(20,"solid","green")
#setting the basic images of traffic lights#
total_1 = above(yellow_light,green_light)
total_2 = above(red_light,total_1)
pole = rectangle(20,200,"solid","black")
total_3 = overlay-align("center","center",total_2,black)
#adding all the elements together#
above(total_3,pole)
#adding the pole to traffic light#
rectangle(50,20,"solid","black")
#correcting the wrong code
circle(30,"solid","red")
#correcting wrong code#
red_flag = rectangle(100,60,"solid","red")
blue_flag = rectangle(40,30,"solid","blue")
#basic elements of the flag
flag_1 = overlay(rotate(30,blue_flag),red_flag)
flag_2 = overlay(rotate(330,blue_flag),flag_1)
yellow_flag = circle(15,"solid","yellow")
overlay(yellow_flag,flag_2)
#adding all elements together#
rotate(45,square(100,"solid","purple"))