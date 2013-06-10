//our particle system

/*
PSEUDO CODE
 - draw sparks
 - make sparks move in a certain direction
 - find a location on the circle
 - destory sparks after certain frames (implement a lifespan)
 */
/*
BUGS
 - sparks aren't moving
 */
class Spark {
  //our constructor
  //vectors for movement
  PVector Pos;
  PVector acceleration;
  PVector velocity;
  //PVector targetPos;

  Spark(PVector pos) {
    Pos = pos.get();
    acceleration = new PVector(0, 0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
  }

  void run() {
    update();
    render();
  }
  void render() {
    fill(255, 255, 255);
    noStroke();
    ellipse(Pos.x, Pos.y, 10, 10);
    println("rendering:"+Pos);
  }

  void update() {
    velocity.add(acceleration);
    Pos.add(velocity);
  }

  void destroy() {
  }
}

