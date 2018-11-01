//NYU IDM Creative Coding
//PROJECT 01
//Man-Ping Wu



//arraylist for bubbles class
ArrayList <Bubbles> bubs;

//array for worm class
Worm [] worm= new Worm [5];

// global variables for colors
float r, g, b;


//---------setup
void setup () {

  size(displayWidth, displayHeight); //size of the window
  background(20); //background color


  //setting the arraylist for the bubbles 
  bubs = new ArrayList<Bubbles>();

  //setting the worm parameters with for loop
  for (int i = 0; i<worm.length;i++){
   worm [i] = new Worm (5,i);
  }

}


//---------draw
void draw() {
 

//adding bubble class with loop
  for(int i = 0; i<4; i++){
    
   //declare local vector variables 
   PVector cursorB;
   PVector v;
   PVector a;
   
   a = new PVector (0,0); //setting the acceleration values for the constructor
   v = new PVector (0,0.03); //setting the velocity values for the constructor
   cursorB = new PVector (mouseX, mouseY);//setting the location values for the constructor
   bubs.add(new Bubbles(cursorB, v, a)); // add the bubble class with the local vector variables
  }

  //keeps the graphics nested and interference from other elements. 
  pushMatrix();
  //for loops for the bubble classes from the arraylist
  for (Bubbles bubbb: bubs){
  bubbb.update(); //update function from class
  bubbb.display();//display function from class
  
  }
  popMatrix();
 
 //worm class to show the display function
  for (int i=0; i<worm.length; i++){
   worm[i].display(); 
  }
 
  }





//-------keypress: to erase the background and reset  
void keyPressed(){

 background(20);
 
}
