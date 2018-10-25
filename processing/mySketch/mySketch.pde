Horseshoe [] horseshoe = new Horseshoe [10];


float r,g,b;


//---------setup
void setup (){
  
 size(900,900);
 
 
// horseshoe parameter
for (int i=0; i<horseshoe.length; i++){
  horseshoe [i] = new Horseshoe (random(30,60), random(10,20), random(0,100), random(100,200));
}


  
}


//---------draw
void draw(){
  
  
  
  
background(255);
 
spacesSquare();

fill(200);
noStroke();
ellipse(750,900,900,900);
fill(0);
ellipse(750,900,850,850);



//horse shoe class applied
//for (int i=0; i<horseshoe.length; i++){
// horseshoe[i].display(); 
//}


for (int i=0; i<horseshoe.length; i++){
translate(80,95);
 horseshoe[i].display(); 
}
  
 }
 
 
 
 void spacesSquare (){
   
    
    for(int xSquare =1; xSquare<width; xSquare+=1){
    for(int y =1; y<height; y+=1){
    
    strokeWeight(1);  
    rect(xSquare,y,10,10);
    
    
    xSquare+=1;
    y+=1;
    
    
    }
   
 }
 }
