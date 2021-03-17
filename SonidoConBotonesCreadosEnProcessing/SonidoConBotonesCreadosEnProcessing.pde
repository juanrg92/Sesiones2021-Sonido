import processing.sound.*;


SoundFile base;
SoundFile base0;
SoundFile sonido;
SoundFile sonido0;

void setup() {
  size(600, 600);

  base = new SoundFile(this, "base.mp3");
  base0 = new SoundFile(this, "base0.wav");
  sonido = new SoundFile(this, "sonido.wav");
  sonido0 = new SoundFile(this, "sonido0.wav");
}


void draw() {


  if (!base.isPlaying()) {
    base.loop();
  }
  ellipse(width/2-100, height/2-100, 50, 50);
  ellipse(width/2+100, height/2-100, 50, 50);

  ellipse(width/2-100, height/2+100, 50, 50);
  ellipse(width/2+100, height/2+100, 50, 50);



  if (mousePressed && dist(width/2-100, height/2+100, mouseX, mouseY)<=25) {
    base0.stop();
  }

  if (mousePressed && dist(width/2+100, height/2+100, mouseX, mouseY)<=25) {
    if (!base0.isPlaying()) {
      base0.loop();
    }
  }

  if (mousePressed && dist(width/2-100, height/2-100, mouseX, mouseY)<=25) {
    if (!sonido.isPlaying()) {
      sonido.play();
    }
  }

  if (mousePressed && dist(width/2+100, height/2-100, mouseX, mouseY)<=25) {
    if (!sonido0.isPlaying()) {
      sonido0.play();
    }
  }
}
