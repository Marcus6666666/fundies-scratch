use context starter2024
a = regular-polygon(40,6,"solid","red")
b = text("STOP",20,"white")

overlay(b,a)

c = circle(40,"outline","red")
d = circle(39,"solid","blue")
e = circle(38,"solid","orange")
overlay(e,d)
overlay(d,c)
beside(c,c)