int startX = (int)(Math.random() * 201) + 50;
int startY = 50;
int endX = 0;
int endY = 50;
int damage = 0;
int hits = 0;
boolean gameOver = false;

void setup()
{
  background(240,248,255);
  size(300,300);
  strokeWeight(5);
  fill(64, 224, 208);
  triangle(25, 50, 150, 600, 275, 50);
  
}

void draw()
{
  strokeWeight(3);
  stroke(0, 0, 0);
  endX = startX + (int)(Math.random()*19 - 9);
  endY = startY + (int)(Math.random()*10);
  if (startY < 125 && endX > 40 && startX > 40 && endX < 260 && endX < 260) {
    line(startX, startY, endX, endY);
  };
  startX = endX;
  startY = endY;
}
void mousePressed()
{
  startX = (int)(Math.random() * 251) + 25;
  startY = 50;
  endX = 0;
  endY = 150;
  damage += (int)(Math.random()*3);
  if (gameOver == false) {
  hits += 1;
  };
  if (damage > 10) {
    background(255, 255, 255);
    fill(170, 170, 170);
    ellipse(150, 50, 250, 50);
    ellipse(100, 25, 250, 50);
    ellipse(200, 25, 250, 50);
    fill(0, 0, 0);
    text("The Jar has Cracked!", 75, 150);
    text("Times Hit: " + hits, 75, 170);
    if (hits > 10) {
      text("Good Score!", 75, 190);
    } else {
      text("Better Luck Next Time", 75, 190);
    };
    gameOver = true;
  };
}

