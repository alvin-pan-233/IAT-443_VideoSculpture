//Particle that gets generated
//The code is studied from the Prcessing website. Retrieved from https://processing.org/examples/multipleparticlesystems.html. 

class ParticleGravity {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  ParticleGravity(PVector l, PVector a) {
    acceleration = a;
    velocity = new PVector(random(-2, 1), random(-3, 0));
    position = l.copy();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 2.0;
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, 1, 1);
  }

  // Check if the particle is still useful
  boolean isDead() {
    return (lifespan < 0.0);
  }
}
