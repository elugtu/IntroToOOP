class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(10); //increases the speed because original vel = 1, so 1*10 means vel = 10.
    c = color(random(255), random(50), random(100, 255));
  }

  Ball(int tDiam){  //temporary diam
    diam = tDiam;
    
    //this has to be the same as original Ball()
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(10); //increases the speed because original vel = 1, so 1*10 means vel = 10.
    c = color(random(255), random(50), random(100, 255));
  }
  
  Ball(float tX, float tY){
    diam = 50;
    loc = new PVector(tX, tY);
    vel = PVector.random2D();
    vel.mult(30);
    c = color(0, 255, 0);
  }
  
  Ball(float tX, float tY, int tDiam){
    diam = tDiam;
    loc = new PVector(tX, tY);
    vel = PVector.random2D();
    vel.mult(5);
    c = color(255, 0, 0);
  }
  
  
  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() { //declares a method, this has to be inside of the class
    loc.add(vel);
  }
  
  void bounce(){
    if(loc.x >= width){
      vel.x = -abs(vel.x);
    }
    if(loc.x <= 0){
      vel.x = abs(vel.x);
    }
    if(loc.y >= height){
      vel.y = -abs(vel.y);
    }
    if(loc.y <= 0){
      vel.y = abs(vel.y);
    }
  }
}

//create a constructor with an x coordinate, y coordinate, and size