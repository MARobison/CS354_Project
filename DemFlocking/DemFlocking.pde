
import java.util.Random;

Flock flock;
Flock male;
Flock female;

void setup() {
  size(640, 640);
  flock = new Flock();
  male = new Flock();
  female = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 10; i++) {
    Boid boid = new Boid(width/2,height/2);
    if(boid.sex == 0){
      male.addBoid(boid);
    }else{
      female.addBoid(boid);
    }
    
  }
}

void draw() {
  background(50);
  male.run();
  female.run();
}

// Add a new boid into the System
void mousePressed() {
    Boid boid = new Boid(width/2,height/2);
    if(boid.sex == 0){
      male.addBoid(boid);
    }else{
      female.addBoid(boid);
    }
}