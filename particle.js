// bubbles over the screen

//bubble up in random postions, constrain to sizes

var scl =2;
var bubble=[];

class Bubble{

constructor(diameterW, tempShade){

	this.w= diameterW;
	this.position=createVector(random(width), random(height));
	this.acceleration =createVector();
	this.velocity=createVector();
	this.maxSpeed=1;
	this.shade=tempShade;


}


display(){

	noStroke();
	fill(this.shade);

	//how to create certain limits within the 

	for (var i = 0; i < 1000; i++) {
		//ellipse(this.position.x, this.position.y, this.w, this.w);
		ellipse(this.position.x, this.position.y, this.w, this.w);
	}
	


}
