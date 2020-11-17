PImage farmyard;

boolean gameOver = false;

 // Declare and initialize a variable (numberOfTurkeys) to store how many turkeys are in the race (2-8)
 
 // Declare an array (turkeys) that is big enough to hold all the turkeys 
 

void setup() {
  // This sets the size of the text used for the lane labels.
  textSize(20);
  
 // Set the size of the race course (make the width bigger for a longer race).
 
 
 // Load a picture into the farmyard to be used as the race background (grass.jpg has been provided for you),
 

 // Resize the farmyard so it will fill the sketch
 
 

 // Create the turkeys and put them in the array. 
 // Example:     turkeys[0] = new Turkey(0, y-value);
 // NOTE: Each turkey will need a unique y value to place it in a different racing lane
 

}

void draw() {
  
 if (!gameOver) {
    // Draw the background (farmyard)
 
    drawLaneMarkers();   // This method draws the lines between each racing lane
    drawTurkeys();       // This method draws each turkey
    moveTurkeys();       // This method moves the turkeys during the race 
    checkForWinner();    // This method checks to see if any of the turkeys have crossed the finishing line

    // See if you can figure out how to change the speed of the turkeys by changing the Turkey class. 

    // Option: Draw the turkeys so they fill the racing lanes (fewer turkeys mean bigger size)

 }

// This code only runs when the game is over
// You do not have to change this code unless you want to
 if (gameOver) {
   fill(0);
   textSize(50);
     text ("RACE OVER", width/4, height/2);
 }
}

void drawTurkeys() {
  
    //  Put code in here to tell each turkey to draw itself
    
}
void moveTurkeys() {
  
    //  Put code in here to tell each turkey to move itself
    
}

void checkForWinner() {
  
    //  Put code in here to check each turkey's x location to see if it crossed the finish line
    //  If a turkey has crossed the line, set     gameOver = true; 
    //  Also write the text "WINNER" in the winning turkey's race lane, so you can see who won.
    //  NOTE: There might be a tie!
 
}

void drawLaneMarkers() {
   // Put code here to draw lines to show the lanes of the racing course
   // Add text in each lane to show which turkey # is racing in it
} 
