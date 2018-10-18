
//seaweed globalvariables
var incS =0.05;
var scl =28;
var cols,rows;
var zoff =0;


//perlin graph
var xoff  =0;
var start =0;
var incG =0.002;




function setup(){

 createCanvas(windowWidth,windowHeight);
 
 cols = floor(width/ scl);
 rows = floor(height/ scl);


}


function draw(){

background(255);

//function seaweed
seaweed();


//perlin graph
stroke(0);
stroke(10);
noFill();
beginShape();
var xoff = start;
for (var x = 0 ; x <width; x++) {
	stroke(0);
	var y = noise(xoff)*height;
	vertex(x,y);
	xoff+=incG;

}
endShape();

start+=incG;





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
	xoff +=incS;
	

	//make the colors move according to the x/y coordinates

	strokeWeight(5);
	stroke(0,255,225);
	
	push();
	translate(x*scl,y*scl);
	rotate(v.heading());
	line(0,0,scl,0);
	pop();

}

yoff+=incS;

zoff +=0.0001;

}

}



function mousePressed(){


		background(255);
		//seaweed();

}



