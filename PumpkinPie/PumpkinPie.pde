
PImage bowl;
int bowlCenterX;
int bowlCenterY;
int bowlSize;

int bowlLiquidSize = 0;  // This value gets updated as the ingredients are added

Ingredient[] ingredients;
Cream cream;
Pumpkin pumpkin;
Egg egg1;
Egg egg2;
Spices spices;
Sugar sugar;
boolean eggAdded;

void setup() {

  // set the size of the sketch here.


  // A bowl image is loaded here for you to use, but you can change it to another image if you want.
  bowl = loadImage("bowl.png");

  // Initialize the bowl size variable here. The bowl needs to fit in the sketch AND leave space around
  // the outside to draw all the yummy pie ingredients :) 


  // Resize the bowl image  here (use the bowlSize variable for its width and height)


  // Each of the ingredients below needs an x and y value for where to draw it on the sketch.
  // Default values have been provided, but you can change them to appear where you want them.
  cream = new Cream(0, 600);
  pumpkin = new Pumpkin(0, 250);
  egg1 = new Egg(0, 50);
  egg2 = new Egg(0, 150);
  spices = new Spices(0, 400);
  sugar = new Sugar(0, 500);
  
  
  // Don't change this next bit. 
  ingredients = new Ingredient[6];
  ingredients[0] = cream;
  ingredients[1] = pumpkin;
  ingredients[2] = egg1;
  ingredients[3] = egg2;
  ingredients[4] = spices;
  ingredients[5] = sugar;
}

void draw() {

  //use the background command to set a color for the sketch background


  // Use the image command to draw the mixing bowl.
  //  note: the bowl image was loaded in the setup method
 
  
  // TEST THE PROGRAM HERE. Do you see a bowl and some ingredients? They should be separate.
  // If the ingredients overlap the bowl, change their x and y values above,
  // or draw the bowl in a different place
  
  // Set the variables bowlCenterX and bowlCenterY to represent the center of the mixing bowl.
  // Hint: Add bowlSize/2 to the x and y values you used to draw the mixing bowl


  if (everythingAdded()) {
    // Set the color of the pie crust (use the fill command)

    // Draw an ellipse (use bowlCenterX and bowlCenterY ). 
    // The ellipse should be a little smaller than bowlSize so you can still see the edge of the bowl


    // Now set the color for the text. Pick something that shows up against the background


    // Set the size of the text 
    

    // Write "PIE IS READY TO BAKE!" on the sketch
    
    
  }

  // This code draws the ingredients that HAVE NOT been added to the pie.
  // Don't change this!
  for (int i=0; i<ingredients.length; i++) {
    ingredients[i].drawIngredient();
  }
  
  // This code draws the mixture of ingredients that HAVE been added to the pie.
  // Don't change this!
  drawMixture();
}      

void colorMixture() {

  int colorOfMixture = #FFFFFF;
  // Here is where you get to pick the colors of the pie mixture. 
  // It will change depending on which ingredients are added, the darker colors come first
  // Hint: Use the color selector tool and copy the code to set the variable colorMixture

  if (pumpkin.added() && spices.added()) {
    
    
  } else if (pumpkin.added() && cream.added()) {
    
    
  } else if (pumpkin.added()) {
    
    
  } else if (eggAdded && spices.added()) {
    
    
  } else if (eggAdded && cream.added()) {
    
    
  } else if (eggAdded) {
    
    
  } else if (cream.added() && spices.added()) {
    
    
  } else if (cream.added()) {
    
    
  }
  fill( colorOfMixture );
}



// You should not need to change any of the following code.
// If you have completed the above methods, run the program to test it
// Drag and drop all the ingredients onto the bowl to make a pie.



void drawMixture() {
  eggAdded = egg1.added() || egg2.added;
  colorMixture();
  ellipse(bowlCenterX, bowlCenterY, bowlLiquidSize, bowlLiquidSize);
}

boolean everythingAdded() {
  boolean in = true;
  for (Ingredient i : ingredients) {
    in = in && i.added();
  }
  return in;
}

void mousePressed() {
  for (Ingredient i : ingredients) {
    i.checkPickUp();
  }
}

void mouseReleased() {

  if (mouseOverBowl()) {
    // Not all ingredients increase the amount of mixture
    boolean moreMixture = false;
    for (Ingredient i : ingredients) {
      moreMixture = moreMixture || i.tryAdd();
    }
    if (moreMixture) {
      bowlLiquidSize += (bowlSize-60)/4;
    }
  }
}

boolean mouseOverBowl() {
  return (mouseX > bowlCenterX-(bowlSize/2) && mouseX < bowlCenterX+(bowlSize/2) && mouseY > bowlCenterY-(bowlSize/2) && mouseY <bowlCenterY+(bowlSize/2));
}
