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
class LSystem{
  String axiom = "X";
  String [][] rules = {{"F","FF","FF","F"},
                      {"X","F[+X][-X]","F[+X]F[-X]","F[+X][-X]"},
                      {"+","+","+","+"},
                      {"-","-","-","-"},
                      {"[","[","[","["},
                      {"]","]","]","]"}};
  String computedWord;
  int iterations;
  float size,scalingFactor,angle;
  LSystem(){
   
    computedWord = axiom;
    iterations=0;
    size = 500;
    scalingFactor = 0.57;
    angle = 20;
  }
  void iteration(){
    String newWord = "";
    char s;
    size *= scalingFactor;
    for(int i = 0; i<computedWord.length();i++){
      s = computedWord.charAt(i);
     for(int j = 0; j<rules.length;j++){
       if(rules[j][0].charAt(0) == s){
         newWord += rules[j][(int)random(1,4)];
         break;
       }
     }
     }
     computedWord = newWord;
     iterations++;
     //println(iterations + ": " +computedWord);
  }  
  void drawLSystem(Turtle t){
    for(int i = 0; i < computedWord.length();i++){
       switch(computedWord.charAt(i)){
         case 'F':
           t.forward(size);
           break;
         case 'X':
           leaf(t);
           break;
         case '+':
           t.right(random(15,50));
           break;
         case '-':
           t.left(random(15,50));
           break;
         case '[':
           t.push();
           break;
         case ']':
           t.pop();
           break;
       }
       
     }
  }
  void leaf(Turtle t){
    float x = t.getX();
    float y = t.getY();
     
    float height = random(10,20);
    float length = random(30,95);
    
    fill(random(20,170),random(100,255),random(20,50));
    pushMatrix();
    translate(x, y); 
    rotate(radians(random(-50,220))); 
    beginShape();
    vertex(0, 0);
    bezierVertex(-length, height / 2, 0, height, 0, 0);
    endShape();
    popMatrix();
   }
}
