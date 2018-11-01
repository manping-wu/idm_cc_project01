class Worm {

  // variables for the worm class
  float x =0;
  float y =0;
  float thickness;
  float nums =150;
  float i;

  // worm constructor with parameters
  Worm (float thicknessTemp, float iTemp) {
 
    //temporary variables to match with class variables
    thickness = thicknessTemp;
    i = iTemp;
  }

//-----display
  void display() {
    fill(20);
    //set noise variable for location, (x,y,z) multiply by width or height, 
    //the i applies to the array from the constructor
    float noiseX = noise (frameCount/40., 0, i)*width; 
    float noiseY = noise (frameCount/40., 100,i)*height; 
    
    // "if x and y not equal to 0"
    if (x!=0 && y!=0) {
      //for loop regarding nums
      for (float i=0; i<=nums; i++) {
        
      //update the location with lerp(calculting between the two numbers at a specific increment) to incorporate noise. 
      //lerp (start, stop, amount)
      float currentX = lerp(x, noiseX, i/nums);
      float currentY = lerp(y, noiseY, i/nums);

      //apply the updated XY values with the thickness 
        ellipse (currentX, currentY, thickness, thickness);

        //map the thickness by the mouseX depending of the width and size of the ellipse
        thickness= map(mouseX, 0, width, 0.5,10);
      }
    }
  //update that xy equal to the noise variables
    x=noiseX; 
    y=noiseY;
  }
}
