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
class LSystem{
  String axiom = "F";
  String [][] rules = {{"F","F[+BBBB][-NNNN]","F[+BBBBB][-NNNNN]","F[+BBBBBB][-NNNNN]","F[+BBBBBBB][-NNNNNNN]","F[+BBBBBBBB][-NNNNNNNN]"},
                      {"B", "L[+SE][-SE]","L[+SE][-SE]"},
                      {"N", "R[+SE][-SE]","R[+SE][-SE]"},
                      {"S", "S","S"},
                      {"R", "R","R"},
                      {"E", "E","E"},
                      {"L", "L","L"},
                      {"+","+","+"},
                      {"-","-","-"},
                      {"[","[","["},
                      {"]","]","]"}};
                      
  String computedWord;
  float scaleFactor,size,angle;
  int iterations;
  
  LSystem(float scaleFactor){
    this.scaleFactor = scaleFactor;
    computedWord = axiom;
    iterations = 0;
  }
  void iteration(){
   char s;
   String newWord = "";
   size = 50;
   size *= scaleFactor;
   for(int i  = 0; i < computedWord.length();i++){
    s = computedWord.charAt(i);
    for(int j = 0; j < rules.length;j++){
      if(rules[j][0].charAt(0) == s){
        //I had more rules for F than other functions
        //this allows me to choose more randomly without
        //cluttering the 2d array.
        if(s == 'F'){
         newWord+=rules[j][(int)random(1,6)]; 
         break;
        }
        else{
          newWord += rules[j][(int)random(1,3)];
          break;
        }
      }
    }
   }
   computedWord = newWord;
   iterations++;
   //println(iterations + ": " +computedWord);
  }
  void drawLSystem(Turtle t){
   angle = random(80,110);
   for(int i = 0;i < computedWord.length();i++){
     switch(computedWord.charAt(i)) {
       case 'F':
         t.right(2);
         t.forward(size); 
         break;  
       case '+': 
         t.right(angle);
         break;
       case '-':
         t.left(angle);
         break;
       case 'L':
         t.forward(12);
         t.left(3);
         break;
       case 'R':
         t.forward(12);
         t.right(3);
         break;
       case 'E':
         fill(#26983C);
         ellipse(t.getX(),t.getY(),5,12);
         stroke(0);
         noFill();
         break;
       case 'S':
         t.forward(6);
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
