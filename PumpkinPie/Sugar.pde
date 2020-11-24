public class Sugar extends Ingredient {

  public Sugar(int x, int y) {
    super("sugar.png", x, y, 159, 100);
  }
  boolean tryAdd() {
    add();
    return false;
  }

}
