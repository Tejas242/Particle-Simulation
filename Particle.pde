class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    acceleration = new PVector(0, 0);
    lifespan = 255.0;
  }
  
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
    lifespan -= 2.0;
  }
  
  void display() {
    stroke(0, lifespan);
    fill(175, lifespan);
    ellipse(position.x, position.y, 8, 8);
  }
  
  boolean isDead() {
    return lifespan < 0.0;
  }
}
