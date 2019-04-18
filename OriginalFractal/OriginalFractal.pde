void setup() {
  background(25);
  size(750, 750);
}

void draw() {
  background(25);
  drawSciFiGalaxy(width/2, height/2, 150);
}

void drawSciFiGalaxy(float x, float y, float r) {

  pushMatrix();
  translate(x, y);
  fill(random(255), random(255), (random(255)));
  triangle(0, (r+r), (-r - r), r, (r+r), (-r - r));

  popMatrix();
  if (r>1) {
    drawSciFiGalaxy(x + r/2, y+ r/2, r*(0.75));
    drawSciFiGalaxy(x - r/2, y- r/2, r*(0.75));
  }
}
