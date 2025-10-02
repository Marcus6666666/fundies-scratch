use context starter2024
L = input("Please enter beam's length in feet")
#requiring user to enter the number for L#
E = input("Please enter the number of modules of elasticity in lb/ft**2")
#requiring users to enter E"
b = input("Please enter the number of beam's base in ft")
#requiring users enter b#
h = input("Please enter beam's height in ft")
#requiring height number#
L = float(L)
E = float(E)
b = float(b)
h = float(h)
#making input type to float for calculation#
#asking users to enter W input for 5 times and calculate each dmax"
W_1 = input("Please enter the number of load weight in lb")
W_1 = float(W_1)
dmax_1 = (4*W_1*L**3)/(E*b*h**3)
W_2 = input("Please enter the number of load weight in lb")
W_2 = float(W_2)
dmax_2 = (4*W_2*L**3)/(E*b*h**3)
W_3 = input("Please enter the number of load weight in lb")
W_3 = float(W_3)
dmax_3 = (4*W_3*L**3)/(E*b*h**3)
W_4 = input("Please enter the number of load weight in lb")
W_4 = float(W_4)
dmax_4 = (4*W_4*L**3)/(E*b*h**3)
W_5 = input("Please enter the number of load weight in lb")
W_5 = float(W_5)
dmax_5 = (4*W_5*L**3)/(E*b*h**3)
#calculating five values of dmax
if dmax_1 > damx_2 and dmax_1 > dmax_3 and dmax_1 > dmax_4 and dmax_1 > dmax_5:
    print('for W = ', w_1 , ', we have the largest d_max which is', dmax_1)
    elif
    
    

    
    
