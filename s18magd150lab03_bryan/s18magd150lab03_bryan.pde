void setup(){
size(300,300);  
  

}

void draw(){
background(90);
  
  ellipse(mouseX,mouseY,37,37);
println(frameCount);
ellipse(pmouseX,pmouseY,40,40);
}