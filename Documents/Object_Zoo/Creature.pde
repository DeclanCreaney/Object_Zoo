/** 
* This class creates an animal using different shapes.
* Extends the Animal class and inherits its methods
*
* @author D. Creaney
*/
class Creature extends Animal{
  
  color bodyColor;
  color eyeColor;
 
 /**
 * Constructs a creature with a specific location, size, and color
 *
 * @param bc The bodycolor of the creature
 * @param ec The eyecolor of the creature
 * @param x The x location of the animal
 * @param y The y location of the animal
 * @param size The scale factor of the creature
 */
  public Creature(color bc, color ec, int size, int x, int y) {
    super(x,y,size);
    this.bodyColor = bc;
    this.eyeColor = ec;
  }
  
  /** Draws the shapes and colors that create the animal on the canvas */
  @Override
  public void draw() {
    fill(bodyColor);
    ellipse(getX() + 35 * getSize(), getY() - 4 * getSize(), 45 * getSize(), 45 * getSize());
    fill(eyeColor);
    ellipse(getX() + 35 * getSize(), getY() - 4 * getSize(), 10 * getSize(), 10 * getSize());
    fill(bodyColor);
    ellipse(getX() + 25 * getSize(), getY() +40 * getSize(), 45 * getSize(), 45 * getSize());
    ellipse(getX() + 45 * getSize(), getY() +81 * getSize(), 45 * getSize(), 45 * getSize());
    ellipse(getX() + 50 * getSize(), getY() +126 * getSize(), 45 * getSize(), 45 * getSize());  
  }
}
