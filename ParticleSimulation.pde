ParticleSystem ps;

void setup() {
  size(800, 600);
  ps = new ParticleSystem(new PVector(width/2, height/2));
}

void draw() {
  background(0);
  
  PVector mouse = new PVector(mouseX, mouseY);
  
  for (Particle p : ps.particles) {
    PVector dir = PVector.sub(mouse, p.position);
    float d = dir.mag();
    dir.normalize();
    if (d < 100) {
      dir.mult(0.5);
    } else {
      dir.mult(0.05);
    }
    p.applyForce(dir);
  }
  
  ps.addParticle();
  ps.run();
}
