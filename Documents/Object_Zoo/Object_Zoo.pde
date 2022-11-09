/** 
* This class sets the size, color, and location of each animal.
* It stores the animals in an ArrayList
* Draws an animal based on the selected key
*
* @author D. Creaney
*/

/** Stores the animal that is going to be made */
int animalMake;
/** Stores animals in list */
ArrayList<Animal>zoo;
void setup() {
  /** Sets the width and height of canvas */
  size(750,750);
  Animal.setDim(750,750);
  /** Creates new ArrayList of animals called "zoo" */
  zoo = new ArrayList<Animal>();
}

void draw() {
  /** Sets the backgroud color to white */
  background(255);
  /** Draws animals and makes them walk */
  for(int i=0; i < zoo.size(); i++){
    zoo.get(i).draw();
    zoo.get(i).walk();
  }
}

/** When a certain key is pressed it selects an animal from the Array */
void keyPressed(){
  if (key == 'f')
    animalMake = 0;
    
  if (key == 'p')
    animalMake = 1;
    
  if (key == 'c')
    animalMake = 2;
}

/** When clicked adds animal to ArrayList with the location mouseX,mouseY */
void mouseClicked(){
  if (animalMake == 0)
    zoo.add(new Fish(color (#8058F2), color (#E29EE3), mouseX,mouseY,1));
    
  if (animalMake == 1)
    zoo.add(new Pig(color (#F072A6), color (#FFFFFF), mouseX,mouseY, 1));
    
  if (animalMake == 2)
    zoo.add(new Creature(color (#A09E9E), color (#ED81EB), 1, mouseX,mouseY));
}
