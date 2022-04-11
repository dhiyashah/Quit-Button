//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
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
