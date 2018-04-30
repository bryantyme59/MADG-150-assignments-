int bubbleposition=300;




void setup(){
size(300,300);  
background(21,29,160);

}
void draw(){
 
  for(int i=0; i<20; i++){
  fill(149,182,250);
  ellipse(20*i,bubbleposition,20,20);
 
  }
   if (mousePressed) {
    ellipse(mouseX-20,mouseY-20,15,15);
   }
bubbleposition=bubbleposition-20;

if(keyPressed){
  ellipse(mouseX+20,mouseY+20,15,15);}


}










 


void mousePressed(){
   stroke(0);
 fill(149,182,250);
 ellipse(mouseX,mouseY,15,15);
 loop();
 
}
 



void keyPressed() {
  println(key + " " + keyCode + " pressed.");
  stroke(0);
 fill(149,182,250);
 ellipse(round(random(width-15)),round(random(height-15)),15,15);
  
}