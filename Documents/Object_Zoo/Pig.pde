class Pig extends Animal{
  color bodyColor;
  color noseColor;
  int eyeColor;
  int wingColor;
  int pupilColor;
  
  public Pig(color bc, color wc, int x, int y, int size) {
    super(x,y,size);
    this.bodyColor = bc;
    this.noseColor = color(235, 144, 47);
    this.eyeColor = color(255);
    this.wingColor = wc;
    this.pupilColor = color(0);
  }
  
 public void draw() {
   fill(bodyColor);
   ellipse(getX(), getY(), 100 * getSize(), 50 * getSize());
   
   fill(noseColor);
   ellipse(getX() - 45 * getSize(), getY() + 2 * getSize(), 22.5 * getSize(), 15 * getSize());
   
   fill(eyeColor);
   ellipse(getX() - 38 * getSize(), getY() - 10 * getSize(), 15 * getSize(), 10 * getSize());
   
   fill(wingColor);
   ellipse(getX() + 30 * getSize(), getY(), 60 * getSize(), 25 * getSize());
   
   fill(pupilColor);
   ellipse(getX() - 38 * getSize(), getY() - 8.5 * getSize(), 7.5 * getSize(), 5 * getSize());
 }
}
   
