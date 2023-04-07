from turtle import Screen, Turtle,mainloop

screen=Screen()
screen.tracer(0)
bulb=Turtle()
bulb.penup()
bulb.goto(-250,-150)
bulb.pendown()
for i in range(4):
    bulb.forward(300)
    bulb.left(90)
bulb.hideturtle()

bulb.forward(130)
bulb.left(90)
bulb.forward(50)
bulb.left(180)
bulb.forward(100)
bulb.left(180)
bulb.forward(50)
bulb.right(90)
bulb.color('white')
bulb.forward(30)
bulb.color('black')
bulb.left(90)
bulb.forward(25)
bulb.left(180)
bulb.forward(50)
bulb.left(180)
bulb.forward(25)
bulb.right(90)
bulb.forward(140)
bulb.left(90)
bulb.forward(50)
bulb.color('white')
bulb.forward(50)
bulb.right(180)
bulb.forward(50)
bulb.right(180)
bulb.color('black')
bulb.right(60)

bulb.forward(30)
bulb.left(120)
bulb.forward(60)
bulb.right(120)
bulb.forward(30)



class slider(Turtle):
    def __init__(self,x,y,c):
        Turtle.__init__(self)
        self.shape('circle')
        self.shapesize(1,1,1)
        self.pensize(5)
        self.speed(0)
        self.up()
        self.color(c)
        self.goto(x,-100)
        self.down()
        self.goto(x,100)
        self.ondrag(self.drag)
        self.y=0

    def drag(self,x,y):
        if (y<=100 and y>=-100):
            self.sety(y)
            self.y_i=self.ycor()
            y_bar=(y+100)/2
            print(y_bar)
    
    def box_value(self,x,y):
        t=Turtle()
        t.penup()
        t.hideturtle()
        t.goto(x+20,30)
        t.clear()
        t.write((y+100)/2,font=("Arial",16,"normal"))
    

m=slider(170,30,'blue')
n=slider(200,30,'black')

# m.box_value(20,30)

game_on=True
while game_on:
    screen.update()
mainloop()




screen.exitonclick()
