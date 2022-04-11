//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
appWidth, appHeight
//
void setup() 
{
  fullScreen();
  println(displayWidth, displayHeight);
  //Landscape, not portrait nor square
  String displayOrientation = (width >= height) ? "Landscape or Square" : "Portrait" ;
  appWidth = ;
  appHeight = ;
  
}//End setup 
//
void draw() 
{
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
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
  
}//End mousePressed
//
//End Main Program
