Ripples[] r;
int n=500;

void setup() {
  size(800, 600);
  colorMode(HSB);
  r=new Ripples[n];

  for (int i=0; i<n; i++) {
    r[i]=new Ripples();
  }
}

void draw() {
  background(0, 0, 0);
  for (int i=0; i<n; i++) {
    r[i].act();
    r[i].show();
  }
}
