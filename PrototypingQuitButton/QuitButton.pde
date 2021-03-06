//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FEFF00, purple=#BD00DB, buttonColour; //Notice NightMode Blue Values 
//
void quitButtonSetupPopulation(int centerX, int centerY) { //ignore Parameter concept
  quitButtonX = centerX - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/2 ;
  quitButtonHeight = appHeight*1/2 ;
}//End quitButtonSetup 
//
void quitButtonDraw() {
  //Display Orientation Feedback, works better if feedback to CANVAS
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Portrait Display Orientation
  // Will nned to rerun the appWidth and appHeight code here 
  //(separate void, 2nd reason to create subprograms is "copy and paste lines of code")
  //
  //Hover-Over Effect
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }//End Hover-Over Effect 
  //
  //Alternate verification that mouseX&Y is on the button
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  fill(buttonColour);
  rect ( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite); //Not night mode compatible, must change 
}//End quitButtonDraw
//
void quitButtonKeyPressed() {
  //Quit Keyboard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board is seperated on key-variables:keu & keyCode
  //
}//End quitButtonKeyPressed
//
void quitButtonMousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End quitButtonMousePressed
//
//End Quit Button
