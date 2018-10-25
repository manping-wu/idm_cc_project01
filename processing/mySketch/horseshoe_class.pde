class Horseshoe{

float insideWeight, outerWeight, insideColor, outerColor; 

Horseshoe( float insideWeightTemp,float outerWeightTemp, float insideColorTemp, float outerColorTemp){

  
  insideWeight=insideWeightTemp;
  outerWeight=outerWeightTemp;
  insideColor=insideColorTemp;
  outerColor=outerColorTemp;
  
}

void display(){

  float arX=0;
 // float span=5;
//outer weight
stroke(outerColor);
strokeCap(SQUARE);
strokeWeight(outerWeight);
noFill();

pushMatrix();
//translate(int(frameCount/span)*80 % width,int(frameCount/span/10)*80 % height);
rotate(radians(45));
arc(0, 0, 190, 180, 0, PI);
popMatrix();

pushMatrix();
translate(255,215);
rotate(radians(225));
arc(0, 0, 190, 180, 0, PI);
popMatrix();



//inside weight
strokeWeight(insideWeight);
stroke(insideColor);
pushMatrix();
translate(100,100);
rotate(radians(45));
arc(arX, 0, 190, 180, 0, PI);
popMatrix();

pushMatrix();
translate(255,215);
rotate(radians(225));
arc(0, 0, 190, 180, 0, PI);
popMatrix();

}
}
