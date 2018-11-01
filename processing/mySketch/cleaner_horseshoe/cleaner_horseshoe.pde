void setup(){
  
  size(400,400);
  
}

void draw(){
  
 strokeWeight(20); 
 strokeCap (SQUARE);
 noFill();
translate(100,200);
pushMatrix();
rotate(radians(180));
arc(0, 0, 190, 180, 0, PI);
popMatrix();


arc(190, 10, 190, 180, 0, PI);

}
