int disX;
int disY;
int a, b, w, h, ex, ey, textColor;
color circleColor, rectColor;
boolean button1Clicked, button2Clicked, rectButtonOver, circleButtonOver;



void setup(){
  
 size(400,400);
surface.setResizable(true);

ex = width/5;
ey = height/2;
a = 3*width/5;
b = height/2 - 50;
w = 100;
h = 100;
textColor= 240;
circleColor = color (0, 0, 200);
rectColor = color (240, 0, 20);
button1Clicked = false;
button2Clicked = true;
rectButtonOver = false;
circleButtonOver = false;
}

void draw(){

      
background(15);
// 1st conditional: Determines what is drawn:


if (button1Clicked){
  drawscreen();
} 

else if (button2Clicked){
     drawmainbutton();
} 




}


void drawscreen(){
  fill(#CAE315);
  ellipse(317,317,30,30);
  fill(#15E324);
  ellipse(290,290,27,27);
  fill(#3306C9);
  ellipse(120,266,33,33);
  fill(#C806C9);
  ellipse(212,161,33,33);
   fill(#CAE315);
  ellipse(317,109,30,30);
  fill(#15E324);
  ellipse(290,132,27,27);
  fill(#3306C9);
  ellipse(120,120,33,33);
  fill(#C806C9);
  ellipse(212,212,33,33);
  // rect button
  // rectMode(CENTER);
  fill(rectColor);
  rect(a,b,w,h);
  fill(textColor);
  text("PRESS", a+w/2, b+h/2);

if(mouseX>a && mouseX<a+w && mouseY >b && mouseY <b+h) {
  rectColor = #111111;
  rectButtonOver = true;
} else {
  rectColor = color (240, 0, 20);
  rectButtonOver = false;
}
}

void drawmainbutton(){
  //circle button
  
  fill(circleColor);
  ellipse(ex,ey,w,h);
  fill(textColor);
  text("PRESS", ex-20, ey-20);
  
disX=mouseX-ex;
disY=mouseY-ey;

if(sqrt(sq(disX)+sq(disY))< w/2.0){
  circleColor = #222222;
  circleButtonOver = true;
} else {
  circleColor = color (0, 0, 200);
  circleButtonOver = false;
}


}


void mousePressed(){
 if(circleButtonOver){
    button1Clicked=!button1Clicked;
  }    
    else if(rectButtonOver){
    button2Clicked=!button2Clicked;
  }
}