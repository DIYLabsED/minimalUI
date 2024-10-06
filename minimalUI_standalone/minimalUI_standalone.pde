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

class mui_button_color_t{
  
}


class mUIButton{
  
}
