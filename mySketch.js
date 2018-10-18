//Project 1
//Checklist I want to accomplished in this project
//1. How to do specks all over the screen
//2. how to change the graphics fill with the coordinates with the color
//3. how lines can move according to the mouseX and mouse Y
//4. how to make things changes over time. 



//seaweed globalvariables
var inc =0.02;
var scl =28;
var cols,rows;
var zoff =0;



function setup(){

 createCanvas(windowWidth,windowHeight);
 
 cols = floor(width/ scl);
 rows = floor(height/ scl);


}


function draw(){

background(255);
seaweed();




}


function seaweed(){
	
	//referenced from Shiffman's coding challenge #24
	//draw multiple lines all over the pages and moving in different directions with perlin noise


var yoff=0;
for (var y=0; y <rows; y++){
	var xoff=0;
for (var x=0; x<cols; x++){
	var index = (x+y*width)*4;
	var angle =noise(xoff,yoff,zoff)* TWO_PI;
	var v=p5.Vector.fromAngle(angle);
	xoff +=inc;
	

	//make the colors move according to the x/y coordinates

	strokeWeight(5);
	stroke(0,255,225);
	
	push();
	translate(x*scl,y*scl);
	rotate(v.heading());
	line(cols,0,scl,0);
	pop();

}

yoff+=inc;

zoff +=0.0001;

}

}



function mousePressed(){


		background(255);
		//seaweed();

}



