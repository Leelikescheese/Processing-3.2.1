//Lee Martin, May 23, 2017

PFont font;
PFont y;

void setup() {
 size(480, 120);
 smooth();
 font = loadFont("ACaslonPro-Regular-48.vlw");
 y = loadFont("TektonPro-BoldExt-48.vlw");

}
void draw() {
 background(102);
  textSize(36);
  textFont(font);
  fill(#FF0000);
 text("Lee Martin", 25, 60);
 textSize(18);
 textFont(y);
 fill(#000EFF);
 text("Lee Martin", 27, 90);
}