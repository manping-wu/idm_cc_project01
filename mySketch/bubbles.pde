class Bubbles {

  PVector location; //vector variable for location
  PVector velocity; //vector variable for velocity
  PVector acceleration; //vector variable for acceleration

  float rand = random(20, 80); //variable for random
  float freq = random(10, 70); //variable for frequency

  //color variables
  float r=random(0, 255); 
  float g=random(0, 255);
  float b=random(0, 255);
  float a=random(0, 255);

  //bubble constructor with parameters
  Bubbles(PVector locationTemp, PVector velocityTemp, PVector accelerationTemp) {

    //temporary variables to match with class variables
    location=locationTemp;
    velocity=velocityTemp;
    acceleration=accelerationTemp;
  }

//-----update
  void update() {

    location.add(velocity); //location add to velocity
    velocity.add(acceleration); //velocity added with acceleration
    acceleration = new PVector (0, 0.01); //acceleration adds on
    rand *=0.99;  //random variable multiplied by 0.99
  }

//-----display
  void display() {

    //chance possiblity variable to set if statements
    //float chance = random (1);


    noStroke();

    ////option 1: chances of 75% of option 1, if not option 2
    //if (chance<0.75) {
    //  fill((r+location.x)/4, g+(frameCount/freq), b, a);
    //} else {
    //  fill((frameCount/freq)*r/4, g, (b+location.y)/freq, a);
    //} 

    //option 2: set the colors based on the location.x and 
    //color variables framecount and frequency
    fill((r+location.x)/4, g+(frameCount/freq), b, a);



    // ellipse with location x variable, location y variable, rand variable 
    ellipse(location.x, location.y, rand, rand);

    //effects to the color variables
    r+=1;
    g-=1;
    b+=1;
    a-=1;
  }
}
