


class CircleBackground{
 
  float signalX, signalY;
  
  CircleBackground (float signalXtemp, float signalYtemp){
    
    signalX=signalXtemp;
    signalY=signalYtemp;

  }
}


 void display(linePointX, linePointY){
  float linePointX, linePointY;
  //do I need to use linePointXtemp and linePointYtemp
  
    //colors will change of the stroke depending on the x, y value 
    //how do I add the height?
  float rL = map(r, 0,width, 0,255); 
float bL=  map(b, 0,width, 0,255); 
float gL=  map(g, 0,width, 0,255); 
   
   
   //how to make the lines move with the mouse when the circle is still in the same place. 
   //keeping the line at the origin of the circle. 
  for(float signalX=3; signalX<width; signalX+=45){
   for (float signalY=3; signalY<height; signalY+=40){
     
     
   //colors will change of the stroke depending on the x, y value  
   stroke(rL,bL,gL); 
   strokeWeight(2);
   ellipse(signalX,signalY,30,30); 
   
   //keep the X2,Y2 static at the origin, where as the X1, Y1 move
   //need to use sine or cos for the X1, Y1
    line(linePointX,linePointY,signalX,signalY+2); 
    
    //line(signalX,signalY-20,signalX,signalY+2); 
    
    //colors will change of the stroke depending on the x, y value
    
    
   }
   }
  
 }
