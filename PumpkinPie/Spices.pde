public class Spices extends Ingredient {

  public Spices(int x, int y){
    super("spices.png", x, y, 100, 93);
  }
    boolean tryAdd() {
    add();
    return false;
  }
}
