/*****************************************
 * Large Assignment 1: L-Systems
 * Name:    Michel Robert
 * E-mail:  Mrobert12@unm.edu
 * Course:      CS491, Computational Fabrication
 * Submitted:    9/14/2023
 *
 * This program creates a bush L-system with yellow
 * flowers at the top of branches.
 * the program can be run with a certain number
 * of iterations through the drawL function.
 * or can be run continuously with the draw function.
 * a photo can me saved by pressing the space bar
 * only works when the draw function is running.
***********************************************/

import Turtle.*;

Turtle t;
LSystem l;
void setup(){
  size(900,900);
  background(255,255,255);
  stroke(0);
  l = new LSystem();
  t = new Turtle(this);
  //drawL();
  frameRate(1);
}

void drawL(){
 for(int i = 0; i < 6;i++){
 background(255,255,255);
 t.setX(width/2);
 t.setY(height/2);
 l.drawLSystem(t);
 l.iteration();
 }
}

void draw(){
 background(255,255,255);
 t.setX(width/2);
 t.setY(height/2);
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
