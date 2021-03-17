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

  if (key == 'a') {
    if (!base0.isPlaying()) {
      base0.loop();
    }
  }
  if (key == 's') {
    base0.stop();
  }
}

void keyPressed() {
  if (key == 'q') {
    if (!sonido.isPlaying()) {
      sonido.play();
    }
  }  
  if (key == 'w') {
    if (!sonido0.isPlaying()) {
      sonido0.play();
    }
  }
}
