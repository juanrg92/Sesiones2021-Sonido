import processing.sound.*;


SoundFile base;


float x;
float y;
float sz;

float x0;
float y0;
float sz0;


void setup() {
  size(600, 600);
  background(255);

  base = new SoundFile(this, "ciencia2.mp3");

  x = width/2;
  y = height/2;
  sz = 100;


  x0 = width/2;
  y0 = height/2+120;
  sz0 = 100;
}


void draw() {

  //background(255);

  ////////////////////////////////////////////////////BOTON0
  float distancia = dist(x, y, mouseX, mouseY);

  if (distancia <= sz/2 && mousePressed) {
    fill(255, 0, 0);

    if (!base.isPlaying()) {
      base.play();
    }
  } else {
    fill(255);
  }

  ellipse(x, y, sz, sz);

  ////////////////////////////////////////////////////BOTON1
  float distancia0 = dist(x0, y0, mouseX, mouseY);

  if (distancia0 <= sz/2 && mousePressed) {
    fill(255, 0, 0);
    base.stop();
  } else {
    fill(255);
  }

  rectMode(CENTER);
  rect(x0, y0, sz0, sz0);
}
