int width = 800;
int height = 800;

Sparks boom = new Sparks(new PVector(width/2,height/2,0), 15); 
void setup() {
  size(width, height);
  boom.create();
}

void draw() {
  background(0, 0, 0);
  boom.render();
}

