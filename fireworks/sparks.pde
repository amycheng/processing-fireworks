//our particle system

class Sparks {
  PVector origin;
  int number;
  ArrayList SparksArray;

  Sparks(PVector pos, int num) {
    origin = pos.get();
    number=num;
    SparksArray = new ArrayList();
  }

  void create(){
    for (int i = 0; i < number; i++) {
      SparksArray.add(new Spark(origin.get()));
    };
  }

  void reset(float newX, float newY, int newNumber){
    origin.x=newX;
    origin.y=newY;
    number = newNumber;
    create();
  }

  void render(){
    for (int i = 0; i < SparksArray.size(); i++) {
      Spark s = (Spark) SparksArray.get(i);
      s.render();
      s.update();
      if(s.timer<=0){
            SparksArray.remove(i);
         };
    };
  }

}
