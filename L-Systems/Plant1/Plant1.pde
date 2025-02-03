/*****************************************
 * Large Assignment 1: L-Systems
 * Name:    Michel Robert
 * E-mail:  Mrobert12@unm.edu
 * Course:      CS491, Computational Fabrication
 * Submitted:    9/14/2023
 *
 * This program creates a branch of a desert bird
 * of paradise shrub. 
 * the program can be run with a set number of iterations
 * via the drawBranch() function
 * or be run continuously with the draw function.
 * a photo can me saved by pressing the space bar
 * only works when the draw function is running.
***********************************************/

import Turtle.*;

Turtle t;
LSystem l;
void setup(){
  size(900,900);
  l = new LSystem(1);
  t = new Turtle(this);
  frameRate(1);
  //drawBranch();
  t.setX(width/2);
  t.setY(height-10);
}

void drawBranch(){
  background(255,255,255);
  t.setX(width/2);
  for(int i = 0; i < 7;i++){    
    l.drawLSystem(t);
    l.iteration();
  }
}
void draw(){
 l.drawLSystem(t);
 l.iteration();
}
void keyPressed(){
 if(key == ' '){
  String filename = "branch" + random(0,100) + ".png";
  save(filename);
  println("saved file: " + filename);
 }
}
