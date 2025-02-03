/*****************************************
 * Large Assignment 1: L-Systems
 * Name:    Michel Robert
 * E-mail:  Mrobert12@unm.edu
 * Course:      CS491, Computational Fabrication
 * Submitted:    9/14/2023
 *
 * This program creates a tree using an L-System
 * you can run the program with a certain number of
 * iterations using the drawL() function and changing
 * the number in the for loop.
 * otherwise the draw function will build the tree 
 * continuously  
 * a photo can me saved by pressing the space bar
 * only works when the draw function is running.
***********************************************/

import Turtle.*;

Turtle t;
LSystem l;

void setup(){
  
  size(900,900);
  t = new Turtle(this);
  l = new LSystem();
  t.setY(height-10);
  //drawL();
  frameRate(1);
}

void drawL(){
  for(int i =0; i < 4; i++){
   background(255,255,255);
   t.setX(width/2); 
   t.setY(height-10);
   l.drawLSystem(t);
   l.iteration();
  }
}
void draw(){
  background(255,255,255);
   t.setX(width/2); 
   t.setY(height-10);
   l.drawLSystem(t);
   l.iteration();
}
void keyPressed(){
 if(key == ' '){
  String filename = "Plant" + random(0,100) + ".png";
  save(filename);
  println("saved file: " + filename);
 }
}
