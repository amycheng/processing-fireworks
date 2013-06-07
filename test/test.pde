/*
TASKS
 - 
 */

int width = 800;
int height = 800;

PVector Pos;
PVector acceleration;
PVector velocity;

Fireworks test = new Fireworks(new PVector(0, 0, 0));
void setup() {
  size(width, height);
  Pos = new PVector (width/2, height/2, 0);
  acceleration = new PVector(0, 0, 0.05);
  velocity = new PVector(random(-1, 1), random(-2, 0));
}

void draw() {
  background(0, 0, 0);
  fill(255);
  velocity.add(acceleration);
  Pos.add(velocity);
  ellipse(Pos.x, Pos.y, 10, 10);
  //test.update();
  //test.render();
}

