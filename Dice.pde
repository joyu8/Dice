Die dice;
 
   void setup()
  {
  noLoop();
  size(400, 400);
  dice = new Die(10, 10);
  textAlign(CENTER);
  }
  void draw()
  {
    int sum = 0;
    background(0);
    for(int x = 50; x <= 300; x = x + 50){
      for(int y = 50; y <= 150; y = y + 50){
       dice = new Die(x, y);
       dice.roll();
       sum = sum + dice.size;
       dice.show();
      }
    }
    text("Total: " +sum, 200, 300);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int size, myX, myY;      
      Die(int x, int y) 
      {
           size = 0;
           myX = x;
           myY = y;
      }
      void roll()
      {
         int random = (int)(Math.random()*6)+1;
         size = random;
      }
      void show()
      {
      fill(255);
      beginShape();
      rect(myX, myY, 50, 50);
      endShape(CLOSE);
      if(size == 1){
        ellipse(myX + 25, myY + 25, 5, 5);
      } else if (size == 2){
        ellipse(myX + 10, myY + 10, 5, 5);
        ellipse(myX + 40, myY + 40, 5, 5);
      }  else if(size == 3){
        ellipse(myX + 25, myY + 25, 5, 5);
        ellipse(myX + 10, myY + 10, 5, 5);
        ellipse(myX + 40, myY + 40, 5, 5);
      }  else if(size == 4){
        ellipse(myX + 10, myY + 10, 5, 5);
        ellipse(myX + 40, myY + 40, 5, 5);
        ellipse(myX + 10, myY + 40, 5, 5);
        ellipse(myX + 40, myY + 10, 5, 5);
      } else if(size == 5){
        ellipse(myX + 10, myY + 10, 5, 5);
        ellipse(myX + 40, myY + 40, 5, 5);
        ellipse(myX + 10, myY + 40, 5, 5);
        ellipse(myX + 40, myY + 10, 5, 5);
        ellipse(myX + 25, myY + 25, 5, 5);
      } else if(size == 6){
        ellipse(myX + 10, myY + 10, 5, 5);
        ellipse(myX + 40, myY + 40, 5, 5);
        ellipse(myX + 10, myY + 25, 5, 5);
        ellipse(myX + 10, myY + 40, 5, 5);
        ellipse(myX + 40, myY + 25, 5, 5);
        ellipse(myX + 40, myY + 10, 5, 5);
      }
      }
  }
