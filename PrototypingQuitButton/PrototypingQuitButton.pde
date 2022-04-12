//Global Variables
int appWidth, appHeight;
//
void setup() 
{
  fullScreen();
  println (displayWidth, displayHeight);
  //Landscape, not portrait nor square
  String landscape = "You are good to go!";
  String portrait = "Bruhh, turn your phone";
  String displayOrientation = ( width >= height ) ? landscape : portrait ;
  if (  displayOrientation==portrait ) println ( displayOrientation ); //Portrait DisplayOrientation
  if ( displayOrientation==landscape ) appWidth = width; //option displayWidth
  if ( displayOrientation==landscape ) appHeight = height; //option displayHeight
  println (appWidth, appHeight); //will be NULL if portrait... until landscape (future lesson)
  //
  //Note: variables similar to Face Rect() on Measles
  int smallerDisplayDimension = appHeight;
  int canvasCenter = smallerDisplayDimension*1/2; //thinking experiment
  quitButtonX = (appWidth*1/2) - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = canvasCenter - appHeight*1/4;
  quitButtonWidth = appWidth*1/2 ;
  quitButtonHeight = appHeight*1/2 ;
  
}//End setup 
//
void draw() 
{
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }//End Hover-Over Effect 
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite);
}//End draw
//
void keyPressed() 
{
  //Quit Keyboard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board is seperated on key-variables:keu & keyCode
}//End keyPressed
//
void mousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End Main Program
