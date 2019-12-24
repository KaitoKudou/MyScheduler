void clock() {
  background(128);
  clock_return3();

  int s = second();
  int m = minute();
  int h = hour();

  noFill();
  stroke(0);
  ellipse(240, 340, 250, 250);
  strokeWeight( 2 );
  show_arm(s/60.0, 100, 240, 340);
  strokeWeight( 4 );
  show_arm(m/60.0, 100, 240, 340);
  show_arm(h/12.0, 80, 240, 340);

  fill(0);
  textSize(60);
  text(h, 110, 150);
  text(":", 180, 150);
  text(m, 200, 150);
  text(":", 270, 150);
  text(s, 290, 150);
}


void show_arm(float rat, float r, float x, float y) {
  float x1, y1;
  float theta;

  theta = TWO_PI * rat - PI / 2.0;
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  line(x, y, x1, y1);
}


void clock_return3()
{
  gButton1.setVisible(false); 
  gButton2.setVisible(false);
  gButton3.setVisible(false);
  gButton5.setFont( font );
  gButton5.fireAllEvents(true);
  gButton5.setVisible(true);
}