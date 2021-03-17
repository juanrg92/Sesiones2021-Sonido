import processing.sound.*;


SoundFile base;


void setup() {
  size(600, 600);

  base = new SoundFile(this, "base.mp3");
}


void draw() {





  if (!base.isPlaying()) {
    base.loop();
  }
}
