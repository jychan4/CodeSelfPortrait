/*
 Yew Journ Chan
 Week2 - Code Self Portrait
*/

public float a;
public float b;
PFont x;

 // set up canvas size, background color, and variables to draw face & hair
void setup() {
  size(500,500);
  background(40,214,234);
  stroke(253, 241, 212);
  fill(253, 235, 212);
  rect(150,150,200,200);
  drawHair();
  drawFace();
  x =createFont("Times New Roman",10);
 
}

//this function will draw hair standing up 
void drawHair(){
  int y = 150;
  int yLowerLimit = 110;
  for (int j = 150;j<178;j=j+3){
    stroke(100);
    if(y<yLowerLimit){
      y=yLowerLimit;
    }else{
      y=y-5;
      if(y<yLowerLimit){
        y=yLowerLimit;
      }
    }
    line(j,150,j,y);
  }
  
 //rest of hair
 for (int i = 175; i < 351; i = i+3) {
   stroke(100);
   line(i, 150, i, yLowerLimit);
 }
}

void draw(){
  //commands to print coordinnates for a and b
  textFont(x);
  fill(0);
  text(a,10,10);
  text(b,10,20);
  a=mouseX;
  b=mouseY;
  
  int leftX = 190;
  int rightX = 290;
  int y = 207;
  int eyeWidth =50;
  int eyeHeight =40;
  
  //left eye
  fill(255);
  stroke(255);
  ellipse(200,200,eyeWidth,eyeHeight);
  fill(0);
  ellipse(leftX,y,13,10);
  
  //right eye
  fill(255);
  stroke(255);
  ellipse(300,200,eyeWidth, eyeHeight);
  fill(0);
  ellipse(rightX,y,13,10);
  
}

void drawFace(){
  //mouth
  fill(0);
  stroke(0);
  rect(215,285,68,7);
  rect(230,300,24,3);
  
  //nose
  stroke(111,88,63);
  fill(0);
  triangle(250,270,240,270,260,270);
  triangle(250,230,240,270,260,270);
  
  //sides
  fill(10);
  rect(150,315,200,30); 

  //ears
  stroke(253, 235, 212);
  fill(253, 235, 212);
  rect(140,215,10,30);
  rect(350,215,10,30);
  
}
