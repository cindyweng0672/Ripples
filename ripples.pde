class Ripples {

  float x, y;
  float vy;
  float wd;
  float dim;
  final int MAX=500;
  float range;

  Ripples() {
    //x=random(width);
    //y=random(height);
    range=100;
    wd=random(MAX);
    dim=255;
    vy=random(5, 10);
  }

  void act() {
    if (wd<=MAX) {
      wd+=5;
      y+=vy;
    }

    if (wd==MAX) {
      dim=0;
    }

    if (wd>MAX) {
      //x=random(width);
      //y=random(height);
      x=mouseX;
      y=mouseY;
      /*x=random(mouseX-range, mouseX+range);
       y=random(mouseY-range, mouseY+range);*/
      wd=random(10);
    }
    dim=map(wd, 0, MAX, 255, 0);

    /*    if(dim>=0){
     dim--;
     }*/
  }

  void show() {
    noFill();
    strokeWeight(0);
    stroke(0, 0, dim);
    ellipse(x, y, wd, wd/2);
  }
}
