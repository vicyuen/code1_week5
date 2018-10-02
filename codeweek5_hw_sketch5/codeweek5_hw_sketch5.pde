
// Code 1 FA_18
// Bryan Ma

// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.

float[] x = new float[100];
float[] y = new float[100];

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  for(int i=0; i<100; i++) {
    x[i] = i*10+50;
    y[i] = i*15;
    colorMode(HSB, 100);
    float c = map(i, 0, 100, 0, 100);
    fill(c, 50, 100);
    ellipse(x[i], y[i], 10, 10);
  }
  
  x[3] = mouseX;
    ellipse(x[3], y[3], 10, 10);
}
