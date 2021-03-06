//Lee Martin, May 25, 2017---------------------------------

float x, y, speedX, speedY;
float diam = 10;
float rectSize = 200;
int start;

void setup() {
  size(500, 500);
  reset();
  start = millis();
}

void reset() {
  x = width/2;
  y = height/2;
  speedX = random(3, 5);
  speedY = random(3, 5);
}

void draw() { 
  background(0);
  int timer = millis()-start;
  text(timer, 350, 490);
  
  fill(255);
  ellipse(x, y, diam, diam);

  fill(#F0001C);
  rect(0, 0, 20, height);
  
  fill(#0041F0);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);

  x += speedX;
  y += speedY;

  
  if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = speedX * -1;
  } 


  if (x < 25) {
    speedX *= -1.1;
    speedY *= 1.1;
    x += speedX;
  }
   
  if ( y > height || y < 0 ) {
    speedY *= -1;
  }
}

void mousePressed() {
  reset();
}