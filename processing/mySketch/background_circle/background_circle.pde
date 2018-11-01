//array or array list?
CircleBackground [] circleBackground = new CircleBackground [30];

void setup(){
  
  size(500,500);
  
  //circlebackground array
  for (int i = 3; i<circleBackground.length; i++){
    circleBackground [i] = new CircleBackground (3,3, 40);
  }
  
}

void draw(){
  
  for (int i = 0; i<circleBackground.length; i++){
    
   circleBackground[i].display(); 
  }
  
  
  
 //for(float signalX=3; signalX<width; signalX+=45){
 //  for (float signalY=3; signalY<height; signalY+=40){

 //ellipse(signalX,signalY,30,30); 
 //strokeWeight(3);
 //line(signalX,signalY-20,signalX,signalY+2); 
     
 //    ellipse(20,20,30,30); 
 //strokeWeight(2);
 //line(20,0,20,22); 
   }
