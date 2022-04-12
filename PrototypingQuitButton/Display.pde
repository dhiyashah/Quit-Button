String landscape, portrait, displayOrientation;

void displayOrientation() {
  //Landscape, not portrait nor square 
  //
  //Note: start local variables until feedback is in draw(), then Global Variables
  landscape = "You are good to go!";
  portrait = "Bruhh, turn your phone";
  displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Portrait DisplayOrientation
  if ( displayOrientation==landscape ) appWidth = width; //option displayWidth
  if ( displayOrientation==landscape ) appHeight = height; //option displayHeight
  //
}//End displayOrientation
//
