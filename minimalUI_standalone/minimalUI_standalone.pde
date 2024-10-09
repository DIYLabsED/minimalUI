/*

  minimalUI
  An open-source Processing sketch that implements classes for UI components, themes, and localisation.
  
  Written by DIY Labs.
  Licensed under GNU GPL V3.
  
  Source:
  https://github.com/DIYLabsED/minimalUI
  
  Documentation:
  https://github.com/DIYLabsED/minimalUI/wiki  
  
  
*/

final int MUI_BUTTON_COORD_TOPLEFT = -1;
final int MUI_BUTTON_COORD_TOPRIGHT = -2;
final int MUI_BUTTON_COORD_BOTTOMLEFT = -3;
final int MUI_BUTTON_COORD_BOTTOMRIGHT = -4;
final int MUI_BUTTON_COORD_CENTER = -5;

// Class that is used to store color information
// Colors can be set through the constructor, or using the set() function for the specific color
// Colors can be read using the get() function for the specific color
class mui_theme_t{
  
  color foregroundColor;
  color backgroundColor;
  color highlightColor;
  color warningColor;
  color errorColor;
  
  // Constructor one, specify colors
  mui_theme_t(color f, color b, color h, color w, color e){
    
    foregroundColor = f;
    backgroundColor = b;
    highlightColor = h;
    warningColor = w;
    errorColor = e;
    
  }
  
  // Constructor two, colors need to be set using the set() functions
  mui_theme_t(){}
  
  // set() functions
  void setForegroundColor(color c){
    foregroundColor = c;
  }
 
  void setBackgroundColor(color c){
    backgroundColor = c;
  }
 
  void setHighlightColor(color c){
    highlightColor = c;
  }
 
  void setWarningColor(color c){
    warningColor = c;
  }
 
  void setErrorColor(color c){
    errorColor = c;
  }
  
  // get() functions
  color getForegroundColor(){
   return foregroundColor; 
  }
 
  color getBackgroundColor(){
   return backgroundColor; 
  }
 
  color getHighlightColor(){
   return highlightColor; 
  }
 
  color getWarningColor(){
   return warningColor; 
  }
 
  color getErrorColor(){
   return errorColor; 
  } 
  
}

class mui_language_t{
   
}

// Class for storing fill/stroke colors, and stroke width
// Can be set through the constructor, or using the set() functions
// Can be read using get() functions;
class mui_fillstroke_t{
  
  color fillColor;
  color strokeColor;
  int strokeWeight;
  
  // Contructor one, pass colors and stroke weight
  mui_fillstroke_t(color f, color s, int w){
   
    fillColor = f;
    strokeColor = s;
    strokeWeight = w;
    
  }
  
  // Constructor two, set colors/weight using the set() functions
  mui_fillstroke_t(){}
  
  // set() functions
  void setFillColor(color c){
   fillColor = c;    
  }
  
  void setStrokeColor(color c){
   strokeColor = c;    
  }
  
  void setStrokeWeight(color c){
   strokeWeight = c;    
  }
  
  // get() functions
  color getFillColor(){
   return fillColor; 
  }
  
  color getStrokeColor(){
   return strokeColor; 
  }
  
  color getStrokeWeight(){
   return strokeWeight; 
  }
  
}

// Class for handling buttons
class mUIButton{
    
  mui_fillstroke_t buttonColorInfo;
  mui_fillstroke_t textColorInfo;
  int buttonX, buttonY; // Note: these are from the top-left corner of the button
  int buttonWidth, buttonHeight;
  int buttonRound;
  
  mUIButton(int align, int x, int y, int w, int h, int r, mui_fillstroke_t button, mui_fillstroke_t text){
    
    if(align == MUI_BUTTON_COORD_TOPLEFT){
     buttonX = x;
     buttonY = y;
    }
    
    if(align == MUI_BUTTON_COORD_TOPRIGHT){
     buttonX = x - w;
     buttonY = y;
    }
    
    if(align == MUI_BUTTON_COORD_BOTTOMLEFT){
     buttonX = x;
     buttonY = y - h;
    }
    
    if(align == MUI_BUTTON_COORD_BOTTOMRIGHT){
     buttonX = x - w;
     buttonY = y - h;
    }
    
    if(align == MUI_BUTTON_COORD_CENTER){
     buttonX = x - (w/2);
     buttonY = y - (h/2);
    }
    
    buttonWidth = w;
    buttonHeight = h;
    buttonRound = r;
    buttonColorInfo = button;
    textColorInfo = text;
     
    fill(button.getFillColor());
    stroke(button.getStrokeColor());
    strokeWeight(button.getStrokeWeight());
    rect(buttonX, buttonY, w, h, r);
    
  }
  
}
