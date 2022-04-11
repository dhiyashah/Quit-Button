//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  
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
