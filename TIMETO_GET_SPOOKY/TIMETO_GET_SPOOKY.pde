//Lee Martin, May 25, 2017

// variables

float x = 255;
float y = 270;
float h = y;

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void setup()
{
  size(600, 600);
  smooth();

  noStroke();
  ellipseMode(RADIUS);
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void draw()
{

  //movement------------------------------------------------
  
h += y;
  background(0);
   if (keyPressed && (key == CODED)) {
 if (keyCode == UP) {
 y--;
 } else if (keyCode == DOWN) {
 y++;
 } else if (keyCode == LEFT) {
   x--;
 } else if (keyCode == RIGHT) {
   x++;
 }
 }
 
 //eyeconstraints------------------------------------------------------------------------------------------------------------
 
 float pupilxl = map(mouseX, 0, width, x+35, x+45);  
 float pupilxr = map(-mouseX, 0, width, x-45, x-55);
 float pupilyl = map(-mouseY, 0, height, y-45, y-55);

//color change--------------------------------------------------------------------------------------------------------------

   background(0);
  strokeWeight(5);

if(keyPressed) {
 if (key == 'g') 
 
 {  fill(#F07800);
 }
 else {
   fill(#0035F0);
 }
}

ellipse(x, y, 240, 200);

 
//face----------------------------------------------------------------------------------------------------
fill(#FFA703);
strokeWeight(3);
stroke(0);
beginShape();
vertex(x-100, y+15); //top left corner
vertex(x-100, y+30); //bottom left corner
vertex(x-30, y+30); //left side of fang
vertex(x-20, y+50); //bottom of fang
vertex(x-10, y+30); //right side of fang
vertex(x+100, y+30); //bottom right corner
vertex(x+100, y+15); //top right corner
endShape(CLOSE);


//eyes---------------------------------------------------------------------------------------------------
strokeWeight(3);
stroke(0);
fill(#FFA703);
ellipse(x-40, y-40, 50, 50);
ellipse(x+60, y-40, 50, 50);
fill(255);

//pupils---------------------------------------------------------------------------------------------------
ellipse(pupilxl, pupilyl, 10, 10);
ellipse(pupilxr, pupilyl, 20, 20); 


//stem thingy---------------------------------------------------------------------------------------------------
noStroke();
fill(#06A054);
triangle(x-30, y-230, x-10, y-200, x-10, y-245);




}