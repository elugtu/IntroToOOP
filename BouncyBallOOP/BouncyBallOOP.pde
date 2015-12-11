Ball b;                //declare a new ball called b
Ball c;
Ball d;
Ball e;

void setup() {
  size(1000, 800);
  b = new Ball();      //initialize b as a new object of the Ball class
  c = new Ball();
  d = new Ball(100);
  e = new Ball(6, 7, 10);
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();
  b.move();
  c.move();
  b.bounce();
  c.bounce();
  d.display();
  d.move();
  d.bounce();
  e.display();
  e.move();
  e.bounce();
}