//letter "c" shows or hides the control sprites
//letter "d" resets the sprites to defaults
//letter "s" saves the sprites positions in a .txt file in the sketch folder
//letter "p" loads the sprites positions presets stored in the .txt file 
//
//
// WARNING: Doesn't work with P2D renderer because of texture mapping
//          Use OPENGL or GLGraphics instead
//


import processing.opengl.*;
import mappingtools.*;


QuadWarp qw;
PImage img;

void setup() {
  size(640, 480, OPENGL);
  smooth();
  img = loadImage("scotland.tif");
  
  // second parameter is the grid resolution of deformation
  qw = new QuadWarp(this, 10);
  
  
}

void draw() {
  background(0);
   
  qw.render(img);
}
