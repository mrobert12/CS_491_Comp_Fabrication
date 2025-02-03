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
class LSystem{
  String axiom = "X";
  String [][] rules = {{"F","F","F","F","FF"},
                       {"X", "F[+F]X","F[-F]X","F[+F]A","F[-F]A"},
                       {"A","F[[+A]F[-A]]A","F[[+A]F[-A]]A","F[[+A][-A]]","F[[+A]F[-A]]"},
                       {"+","+","+","+","+"},
                       {"-","-","-","-","-"},
                       {"[","[","[","[","["},
                       {"]","]","]","]","]"}};
  
  
  String computedWord;
  int iterations;
  float size,angle;
  LSystem(){
    
    computedWord = axiom;
    iterations = 0;
  }
  void iteration(){
    String newWord = "";
  char s;
  for(int i = 0; i<computedWord.length();i++){
    s = computedWord.charAt(i);
   for(int j = 0; j<rules.length;j++){
     if(rules[j][0].charAt(0) == s){
       
         newWord += rules[j][(int)random(1,5)];
         break;
       
     }
   }
   }
   computedWord = newWord;
   iterations++;
   //println(iterations + ": " +computedWord);
  }
  
  void drawLSystem(Turtle t){
    size = 15;
   angle = 20;
   //float cx1,endx,cx2,cy1,cy2,endy;
   for(int i = 0; i < computedWord.length();i++){
    switch(computedWord.charAt(i)){
      case 'F':
        t.forward(size);
        break;
      case 'A':
        fill(#CDDE1F);
        ellipse(t.getX(),t.getY(),5,10);
        break;
      case '+':
        t.right(angle);
        break;
      case '-':
        t.left(angle);
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
}
