//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  fullScreen();
  println (displayWidth, displayHeight);
  //Landscape, not portrait nor square
  String displayOrientation = ( width >= height ) ? "You are good to go!" : "Bruhh, turn your phone" ;
  if ( width < height ) println ( displayOrientation ); //Portrait DisplayOrientation
  if ( width >= height ) appWidth = width; //option displayWidth
  if ( width >= height ) appHeight = height; //option displayHeight
  
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
