class Creature {
  
  color bodyColor;
  color eyeColor;
  int size;
  int xPos;
  int yPos;
  
  public Creature(color bc, color ec, int size, int x, int y) {
    this.bodyColor = bc;
    this.eyeColor = ec;
    this.size = size;
    this.xPos = x;
    this.yPos = y;
  }
  
  public void draw() {
    fill(bodyColor);
    ellipse(xPos + 35 * size, yPos - 4 * size, 45 * size, 45 * size);
    fill(eyeColor);
    ellipse(xPos + 35 * size, yPos - 4 * size, 10 * size, 10 * size);
    fill(bodyColor);
    ellipse(xPos + 25 * size, yPos +40 * size, 45 * size, 45 * size);
    ellipse(xPos + 45 * size, yPos +81 * size, 45 * size, 45 * size);
    ellipse(xPos + 50 * size, yPos +126 * size, 45 * size, 45 * size);  
}
  
  void move(int x, int y) {
    this.xPos = x;
    this.yPos = y;
  }
  
  void bounce(int speed, int dim) {
    if (bounce == true){
    xPos +=speed;
    yPos += speed;
    }
  if (xPos == dim * size)
    bounce = false;
  if (bounce == false){
    xPos -=speed;
    yPos -= speed;
  }
  if (xPos == 0 * size)
    bounce = true;
  }
}
