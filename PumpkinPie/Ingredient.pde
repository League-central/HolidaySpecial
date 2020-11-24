public abstract class Ingredient {

  PImage image;
  boolean added = false;
  boolean picked = false;
  int x;
  int y;
  int imageHeight;
  int imageWidth;

   Ingredient(String imageFile, int x, int y, int w, int h ) {
    this.x = x;
    this.y = y;
    this.imageWidth = w;
    this.imageHeight = h;
    image = loadImage(imageFile);
    image.resize(imageWidth, imageHeight);
  }  

  public boolean pickedUp() {
    return picked;
  }

  public void pickUp() {
    picked = true;
  }

  public void drop() {
    picked = false;
    added = true;
  }

  public boolean notAdded() {
    return !added;
  }

  public boolean tryAdd() {
      if (pickedUp()) {
        drop();
        added = true;
        return true;
      }
      return false;
    }

  public void add() {
    if (pickedUp()) {
      drop();
      added = true;
    }
  }

  public boolean added() {
    return added;
  }

  public void drawIngredient() {
    if (notAdded()) {
        drawNotAdded();
    } 
  }
  public void moveWithMouse() {
    image(image, mouseX, mouseY);
  }

  public void drawOnTable() {
    image(image, x, y);
  }

  public boolean mouseOnIngredient() {
    return mouseX > x && mouseX <= imageWidth && mouseY > y && mouseY < y + imageHeight;
  }

  public void drawNotAdded() {
    if (pickedUp()) {
      moveWithMouse();
    } else {
      drawOnTable();
    }
  }
  
  void checkPickUp() {
    if ( notAdded() &&  mouseOnIngredient()) {
        pickUp();
     }
  }
}
